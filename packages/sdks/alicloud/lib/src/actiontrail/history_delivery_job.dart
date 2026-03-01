import 'package:pulumi/pulumi.dart' as pulumi;
import 'history_delivery_job_args.dart';
import 'history_delivery_job_state.dart';

/// Provides a Action Trail History Delivery Job resource.
///
/// Delivery History Tasks.
///
/// For information about Action Trail History Delivery Job and how to use it, see [What is History Delivery Job](https://www.alibabacloud.com/help/en/actiontrail/latest/api-actiontrail-2020-07-06-createdeliveryhistoryjob).
///
/// > **NOTE:** Available since v1.139.0.
///
/// > **NOTE:** You are authorized to use the historical event delivery task feature. To use this feature, [submit a ticket](https://workorder-intl.console.aliyun.com/?spm=a2c63.p38356.0.0.e29f552bb6odNZ#/ticket/createIndex) or ask the sales manager to add you to the whitelist.
///
/// > **NOTE:** Make sure that you have called the `alicloud.actiontrail.Trail` to create a single-account or multi-account trace that delivered to Log Service SLS.
///
/// > **NOTE:** An Alibaba cloud account can only have one running delivery history job at the same time.
///
///
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const _default = alicloud.getRegions({
///     current: true,
/// });
/// const defaultGetAccount = alicloud.getAccount({});
/// const defaultGetRoles = alicloud.ram.getRoles({
///     nameRegex: "AliyunServiceRoleForActionTrail",
/// });
/// const defaultProject = new alicloud.log.Project("default", {
///     description: name,
///     projectName: name,
/// });
/// const defaultTrail = new alicloud.actiontrail.Trail("default", {
///     eventRw: "Write",
///     slsProjectArn: pulumi.all([_default, defaultGetAccount, defaultProject.projectName]).apply(([_default, defaultGetAccount, projectName]) => `acs:log:${_default.regions?.[0]?.id}:${defaultGetAccount.id}:project/${projectName}`),
///     trailName: name,
///     slsWriteRoleArn: defaultGetRoles.then(defaultGetRoles => defaultGetRoles.roles?.[0]?.arn),
///     trailRegion: "All",
///     isOrganizationTrail: false,
///     status: "Enable",
///     eventSelectors: JSON.stringify([{
///         ServiceName: "PDS",
///     }]),
///     dataEventTrailRegion: "cn-hangzhou",
/// });
/// const defaultHistoryDeliveryJob = new alicloud.actiontrail.HistoryDeliveryJob("default", {trailName: defaultTrail.id});
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = alicloud.get_regions(current=True)
/// default_get_account = alicloud.get_account()
/// default_get_roles = alicloud.ram.get_roles(name_regex="AliyunServiceRoleForActionTrail")
/// default_project = alicloud.log.Project("default",
///     description=name,
///     project_name=name)
/// default_trail = alicloud.actiontrail.Trail("default",
///     event_rw="Write",
///     sls_project_arn=default_project.project_name.apply(lambda project_name: f"acs:log:{default.regions[0].id}:{default_get_account.id}:project/{project_name}"),
///     trail_name=name,
///     sls_write_role_arn=default_get_roles.roles[0].arn,
///     trail_region="All",
///     is_organization_trail=False,
///     status="Enable",
///     event_selectors=json.dumps([{
///         "ServiceName": "PDS",
///     }]),
///     data_event_trail_region="cn-hangzhou")
/// default_history_delivery_job = alicloud.actiontrail.HistoryDeliveryJob("default", trail_name=default_trail.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf-example";
///     var @default = AliCloud.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     var defaultGetAccount = AliCloud.GetAccount.Invoke();
///
///     var defaultGetRoles = AliCloud.Ram.GetRoles.Invoke(new()
///     {
///         NameRegex = "AliyunServiceRoleForActionTrail",
///     });
///
///     var defaultProject = new AliCloud.Log.Project("default", new()
///     {
///         Description = name,
///         ProjectName = name,
///     });
///
///     var defaultTrail = new AliCloud.ActionTrail.Trail("default", new()
///     {
///         EventRw = "Write",
///         SlsProjectArn = Output.Tuple(@default, defaultGetAccount, defaultProject.ProjectName).Apply(values =>
///         {
///             var @default = values.Item1;
///             var defaultGetAccount = values.Item2;
///             var projectName = values.Item3;
///             return $"acs:log:{@default.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id)}:{defaultGetAccount.Apply(getAccountResult => getAccountResult.Id)}:project/{projectName}";
///         }),
///         TrailName = name,
///         SlsWriteRoleArn = defaultGetRoles.Apply(getRolesResult => getRolesResult.Roles[0]?.Arn),
///         TrailRegion = "All",
///         IsOrganizationTrail = false,
///         Status = "Enable",
///         EventSelectors = JsonSerializer.Serialize(new[]
///         {
///             new Dictionary<string, object?>
///             {
///                 ["ServiceName"] = "PDS",
///             },
///         }),
///         DataEventTrailRegion = "cn-hangzhou",
///     });
///
///     var defaultHistoryDeliveryJob = new AliCloud.ActionTrail.HistoryDeliveryJob("default", new()
///     {
///         TrailName = defaultTrail.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/actiontrail"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/log"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := alicloud.GetRegions(ctx, &alicloud.GetRegionsArgs{
/// 			Current: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetAccount, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetRoles, err := ram.GetRoles(ctx, &ram.GetRolesArgs{
/// 			NameRegex: pulumi.StringRef("AliyunServiceRoleForActionTrail"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultProject, err := log.NewProject(ctx, "default", &log.ProjectArgs{
/// 			Description: pulumi.String(name),
/// 			ProjectName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal([]map[string]interface{}{
/// 			map[string]interface{}{
/// 				"ServiceName": "PDS",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		defaultTrail, err := actiontrail.NewTrail(ctx, "default", &actiontrail.TrailArgs{
/// 			EventRw: pulumi.String("Write"),
/// 			SlsProjectArn: defaultProject.ProjectName.ApplyT(func(projectName string) (string, error) {
/// 				return fmt.Sprintf("acs:log:%v:%v:project/%v", _default.Regions[0].Id, defaultGetAccount.Id, projectName), nil
/// 			}).(pulumi.StringOutput),
/// 			TrailName:            pulumi.String(name),
/// 			SlsWriteRoleArn:      pulumi.String(defaultGetRoles.Roles[0].Arn),
/// 			TrailRegion:          pulumi.String("All"),
/// 			IsOrganizationTrail:  pulumi.Bool(false),
/// 			Status:               pulumi.String("Enable"),
/// 			EventSelectors:       pulumi.String(json0),
/// 			DataEventTrailRegion: pulumi.String("cn-hangzhou"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = actiontrail.NewHistoryDeliveryJob(ctx, "default", &actiontrail.HistoryDeliveryJobArgs{
/// 			TrailName: defaultTrail.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetRegionsArgs;
/// import com.pulumi.alicloud.ram.RamFunctions;
/// import com.pulumi.alicloud.ram.inputs.GetRolesArgs;
/// import com.pulumi.alicloud.log.Project;
/// import com.pulumi.alicloud.log.ProjectArgs;
/// import com.pulumi.alicloud.actiontrail.Trail;
/// import com.pulumi.alicloud.actiontrail.TrailArgs;
/// import com.pulumi.alicloud.actiontrail.HistoryDeliveryJob;
/// import com.pulumi.alicloud.actiontrail.HistoryDeliveryJobArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("tf-example");
///         final var default = AlicloudFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         final var defaultGetAccount = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         final var defaultGetRoles = RamFunctions.getRoles(GetRolesArgs.builder()
///             .nameRegex("AliyunServiceRoleForActionTrail")
///             .build());
///
///         var defaultProject = new Project("defaultProject", ProjectArgs.builder()
///             .description(name)
///             .projectName(name)
///             .build());
///
///         var defaultTrail = new Trail("defaultTrail", TrailArgs.builder()
///             .eventRw("Write")
///             .slsProjectArn(defaultProject.projectName().applyValue(_projectName -> String.format("acs:log:%s:%s:project/%s", default_.regions()[0].id(),defaultGetAccount.id(),_projectName)))
///             .trailName(name)
///             .slsWriteRoleArn(defaultGetRoles.roles()[0].arn())
///             .trailRegion("All")
///             .isOrganizationTrail(false)
///             .status("Enable")
///             .eventSelectors(serializeJson(
///                 jsonArray(jsonObject(
///                     jsonProperty("ServiceName", "PDS")
///                 ))))
///             .dataEventTrailRegion("cn-hangzhou")
///             .build());
///
///         var defaultHistoryDeliveryJob = new HistoryDeliveryJob("defaultHistoryDeliveryJob", HistoryDeliveryJobArgs.builder()
///             .trailName(defaultTrail.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
/// resources:
///   defaultProject:
///     type: alicloud:log:Project
///     name: default
///     properties:
///       description: ${name}
///       projectName: ${name}
///   defaultTrail:
///     type: alicloud:actiontrail:Trail
///     name: default
///     properties:
///       eventRw: Write
///       slsProjectArn: acs:log:${default.regions[0].id}:${defaultGetAccount.id}:project/${defaultProject.projectName}
///       trailName: ${name}
///       slsWriteRoleArn: ${defaultGetRoles.roles[0].arn}
///       trailRegion: All
///       isOrganizationTrail: false
///       status: Enable
///       eventSelectors:
///         fn::toJSON:
///           - ServiceName: PDS
///       dataEventTrailRegion: cn-hangzhou
///   defaultHistoryDeliveryJob:
///     type: alicloud:actiontrail:HistoryDeliveryJob
///     name: default
///     properties:
///       trailName: ${defaultTrail.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getRegions
///       arguments:
///         current: true
///   defaultGetAccount:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
///   defaultGetRoles:
///     fn::invoke:
///       function: alicloud:ram:getRoles
///       arguments:
///         nameRegex: AliyunServiceRoleForActionTrail
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Action Trail History Delivery Job can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:actiontrail/historyDeliveryJob:HistoryDeliveryJob example <id>
/// ```
class HistoryDeliveryJob extends pulumi.CustomResource {
  /// The creation time of the resource
  late final pulumi.Output<String> createTime;
  /// The status of the resource
  late final pulumi.Output<int> status;
  /// The Track Name.
  late final pulumi.Output<String> trailName;

  /// Creates a new [HistoryDeliveryJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HistoryDeliveryJob]. {@macro pulumi_actiontrail_history_delivery_job_history_delivery_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HistoryDeliveryJob(
    String name, {
    HistoryDeliveryJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:actiontrail/historyDeliveryJob:HistoryDeliveryJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.status = registerOutput<int>('status');
    this.trailName = registerOutput<String>('trailName');
  }

  /// Gets an existing [HistoryDeliveryJob] resource's state with the given [name] and [id].
  static HistoryDeliveryJob get(
    String name,
    pulumi.Input<String> id, {
    HistoryDeliveryJobState? state,
  }) {
    return HistoryDeliveryJob._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HistoryDeliveryJob._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:actiontrail/historyDeliveryJob:HistoryDeliveryJob',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.status = registerOutput<int>('status');
    this.trailName = registerOutput<String>('trailName');
  }
}
