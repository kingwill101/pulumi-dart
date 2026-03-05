import 'package:pulumi/pulumi.dart' as pulumi;
import 'trail_args.dart';
import 'trail_state.dart';

/// Provides a Actiontrail Trail resource.
///
/// Trail of ActionTrail. After creating a trail, you need to enable the trail through StartLogging.
///
/// For information about Actiontrail Trail and how to use it, see [What is Trail](https://www.alibabacloud.com/help/en/actiontrail/latest/api-actiontrail-2020-07-06-createtrail).
///
/// &gt; **NOTE:** Available since v1.95.0.
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
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.getRegions({
///     current: true,
/// });
/// const defaultGetAccount = alicloud.getAccount({});
/// const defaultInteger = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultProject = new alicloud.log.Project("default", {
///     projectName: `${name}-${defaultInteger.result}`,
///     description: "tf actiontrail example",
/// });
/// const defaultGetRoles = alicloud.ram.getRoles({
///     nameRegex: "AliyunServiceRoleForActionTrail",
/// });
/// const defaultTrail = new alicloud.actiontrail.Trail("default", {
///     trailName: name,
///     slsWriteRoleArn: defaultGetRoles.then(defaultGetRoles => defaultGetRoles.roles?.[0]?.arn),
///     slsProjectArn: pulumi.all([_default, defaultGetAccount, defaultProject.projectName]).apply(([_default, defaultGetAccount, projectName]) => `acs:log:${_default.regions?.[0]?.id}:${defaultGetAccount.id}:project/${projectName}`),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.get_regions(current=True)
/// default_get_account = alicloud.get_account()
/// default_integer = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_project = alicloud.log.Project("default",
///     project_name=f"{name}-{default_integer['result']}",
///     description="tf actiontrail example")
/// default_get_roles = alicloud.ram.get_roles(name_regex="AliyunServiceRoleForActionTrail")
/// default_trail = alicloud.actiontrail.Trail("default",
///     trail_name=name,
///     sls_write_role_arn=default_get_roles.roles[0].arn,
///     sls_project_arn=default_project.project_name.apply(lambda project_name: f"acs:log:{default.regions[0].id}:{default_get_account.id}:project/{project_name}"))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = AliCloud.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     var defaultGetAccount = AliCloud.GetAccount.Invoke();
///
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultProject = new AliCloud.Log.Project("default", new()
///     {
///         ProjectName = $"{name}-{defaultInteger.Result}",
///         Description = "tf actiontrail example",
///     });
///
///     var defaultGetRoles = AliCloud.Ram.GetRoles.Invoke(new()
///     {
///         NameRegex = "AliyunServiceRoleForActionTrail",
///     });
///
///     var defaultTrail = new AliCloud.ActionTrail.Trail("default", new()
///     {
///         TrailName = name,
///         SlsWriteRoleArn = defaultGetRoles.Apply(getRolesResult => getRolesResult.Roles[0]?.Arn),
///         SlsProjectArn = Output.Tuple(@default, defaultGetAccount, defaultProject.ProjectName).Apply(values =>
///         {
///             var @default = values.Item1;
///             var defaultGetAccount = values.Item2;
///             var projectName = values.Item3;
///             return $"acs:log:{@default.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id)}:{defaultGetAccount.Apply(getAccountResult => getAccountResult.Id)}:project/{projectName}";
///         }),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/actiontrail"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/log"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
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
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultProject, err := log.NewProject(ctx, "default", &log.ProjectArgs{
/// 			ProjectName: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// 			Description: pulumi.String("tf actiontrail example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetRoles, err := ram.GetRoles(ctx, &ram.GetRolesArgs{
/// 			NameRegex: pulumi.StringRef("AliyunServiceRoleForActionTrail"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = actiontrail.NewTrail(ctx, "default", &actiontrail.TrailArgs{
/// 			TrailName:       pulumi.String(name),
/// 			SlsWriteRoleArn: pulumi.String(defaultGetRoles.Roles[0].Arn),
/// 			SlsProjectArn: defaultProject.ProjectName.ApplyT(func(projectName string) (string, error) {
/// 				return fmt.Sprintf("acs:log:%v:%v:project/%v", _default.Regions[0].Id, defaultGetAccount.Id, projectName), nil
/// 			}).(pulumi.StringOutput),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.log.Project;
/// import com.pulumi.alicloud.log.ProjectArgs;
/// import com.pulumi.alicloud.ram.RamFunctions;
/// import com.pulumi.alicloud.ram.inputs.GetRolesArgs;
/// import com.pulumi.alicloud.actiontrail.Trail;
/// import com.pulumi.alicloud.actiontrail.TrailArgs;
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
///         final var name = config.get("name").orElse("terraform-example");
///         final var default = AlicloudFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         final var defaultGetAccount = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultProject = new Project("defaultProject", ProjectArgs.builder()
///             .projectName(String.format("%s-%s", name,defaultInteger.result()))
///             .description("tf actiontrail example")
///             .build());
///
///         final var defaultGetRoles = RamFunctions.getRoles(GetRolesArgs.builder()
///             .nameRegex("AliyunServiceRoleForActionTrail")
///             .build());
///
///         var defaultTrail = new Trail("defaultTrail", TrailArgs.builder()
///             .trailName(name)
///             .slsWriteRoleArn(defaultGetRoles.roles()[0].arn())
///             .slsProjectArn(defaultProject.projectName().applyValue(_projectName -> String.format("acs:log:%s:%s:project/%s", default_.regions()[0].id(),defaultGetAccount.id(),_projectName)))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       min: 10000
///       max: 99999
///   defaultProject:
///     type: alicloud:log:Project
///     name: default
///     properties:
///       projectName: ${name}-${defaultInteger.result}
///       description: tf actiontrail example
///   defaultTrail:
///     type: alicloud:actiontrail:Trail
///     name: default
///     properties:
///       trailName: ${name}
///       slsWriteRoleArn: ${defaultGetRoles.roles[0].arn}
///       slsProjectArn: acs:log:${default.regions[0].id}:${defaultGetAccount.id}:project/${defaultProject.projectName}
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
/// Actiontrail Trail can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:actiontrail/trail:Trail example <id>
/// ```
class Trail extends pulumi.CustomResource {
  /// (Available since v1.256.0) The time when the trail was created.
  late final pulumi.Output<String> createTime;
  /// The regions where the trail tracks data events. The value is a comma-separated list of region IDs.
  late final pulumi.Output<String?> dataEventTrailRegion;
  /// The read/write type of the events to be delivered. Default value: `All`. Valid values: `Read`, `Write`, `All`.
  late final pulumi.Output<String> eventRw;
  /// The configuration of the data event selector. This parameter is a JSON array that can contain a maximum of 20 elements.
  late final pulumi.Output<String?> eventSelectors;
  /// Specifies whether to create a multi-account trail. Default value: `false`. Valid values:
  late final pulumi.Output<bool?> isOrganizationTrail;
  /// The ARN of the MaxCompute project to which you want to deliver events.
  late final pulumi.Output<String?> maxComputeProjectArn;
  /// The ARN of the role that is assumed by ActionTrail to deliver events to the MaxCompute project.
  late final pulumi.Output<String> maxComputeWriteRoleArn;
  /// Field `mns_topic_arn` has been deprecated from provider version 1.118.0.
  late final pulumi.Output<String?> mnsTopicArn;
  /// Field `name` has been deprecated from provider version 1.95.0. New field `trail_name` instead.
  late final pulumi.Output<String> name;
  /// The OSS bucket to which the trail delivers logs.
  late final pulumi.Output<String?> ossBucketName;
  /// The prefix of the file name in the OSS bucket to which the trail delivers logs.
  late final pulumi.Output<String?> ossKeyPrefix;
  /// The name of the RAM role that the user allows ActionTrail to access OSS service.
  late final pulumi.Output<String?> ossWriteRoleArn;
  /// (Available since v1.256.0) The home region of the trail.
  late final pulumi.Output<String> regionId;
  /// Field `role_name` has been deprecated from provider version 1.118.0.
  late final pulumi.Output<String?> roleName;
  /// The ARN of the Simple Log Service project to which the trail delivers logs.
  late final pulumi.Output<String?> slsProjectArn;
  /// The ARN of the role that ActionTrail assumes to deliver operation events to the Simple Log Service project.
  late final pulumi.Output<String> slsWriteRoleArn;
  /// The status of the trail. Default value: `Enable`. Valid values: `Enable`, `Disable`.
  late final pulumi.Output<String> status;
  /// The name of the trail to be created.
  late final pulumi.Output<String> trailName;
  /// The region of the trail.
  late final pulumi.Output<String> trailRegion;

  /// Creates a new [Trail].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Trail]. {@macro pulumi_actiontrail_trail_trail_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Trail(
    String name, {
    TrailArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:actiontrail/trail:Trail',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    dataEventTrailRegion = registerOutput<String?>('dataEventTrailRegion');
    eventRw = registerOutput<String>('eventRw');
    eventSelectors = registerOutput<String?>('eventSelectors');
    isOrganizationTrail = registerOutput<bool?>('isOrganizationTrail');
    maxComputeProjectArn = registerOutput<String?>('maxComputeProjectArn');
    maxComputeWriteRoleArn = registerOutput<String>('maxComputeWriteRoleArn');
    mnsTopicArn = registerOutput<String?>('mnsTopicArn');
    this.name = registerOutput<String>('name');
    ossBucketName = registerOutput<String?>('ossBucketName');
    ossKeyPrefix = registerOutput<String?>('ossKeyPrefix');
    ossWriteRoleArn = registerOutput<String?>('ossWriteRoleArn');
    regionId = registerOutput<String>('regionId');
    roleName = registerOutput<String?>('roleName');
    slsProjectArn = registerOutput<String?>('slsProjectArn');
    slsWriteRoleArn = registerOutput<String>('slsWriteRoleArn');
    status = registerOutput<String>('status');
    trailName = registerOutput<String>('trailName');
    trailRegion = registerOutput<String>('trailRegion');
  }

  /// Gets an existing [Trail] resource's state with the given [name] and [id].
  static Trail get(
    String name,
    pulumi.Input<String> id, {
    TrailState? state,
  }) {
    return Trail._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Trail._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:actiontrail/trail:Trail',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    dataEventTrailRegion = registerOutput<String?>('dataEventTrailRegion');
    eventRw = registerOutput<String>('eventRw');
    eventSelectors = registerOutput<String?>('eventSelectors');
    isOrganizationTrail = registerOutput<bool?>('isOrganizationTrail');
    maxComputeProjectArn = registerOutput<String?>('maxComputeProjectArn');
    maxComputeWriteRoleArn = registerOutput<String>('maxComputeWriteRoleArn');
    mnsTopicArn = registerOutput<String?>('mnsTopicArn');
    this.name = registerOutput<String>('name');
    ossBucketName = registerOutput<String?>('ossBucketName');
    ossKeyPrefix = registerOutput<String?>('ossKeyPrefix');
    ossWriteRoleArn = registerOutput<String?>('ossWriteRoleArn');
    regionId = registerOutput<String>('regionId');
    roleName = registerOutput<String?>('roleName');
    slsProjectArn = registerOutput<String?>('slsProjectArn');
    slsWriteRoleArn = registerOutput<String>('slsWriteRoleArn');
    status = registerOutput<String>('status');
    trailName = registerOutput<String>('trailName');
    trailRegion = registerOutput<String>('trailRegion');
  }
}
