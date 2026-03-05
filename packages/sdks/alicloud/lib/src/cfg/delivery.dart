import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_args.dart';
import 'delivery_state.dart';

/// Provides a Config Delivery resource.
///
/// Delivery channel of current account.
///
/// For information about Config Delivery and how to use it, see [What is Delivery](https://www.alibabacloud.com/help/en/cloud-config/latest/api-config-2020-09-07-createconfigdeliverychannel).
///
/// &gt; **NOTE:** Available since v1.171.0.
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
/// const name = config.get("name") || "tf-example-sls";
/// const _this = alicloud.getAccount({});
/// const thisGetRegions = alicloud.getRegions({
///     current: true,
/// });
/// const _default = new alicloud.log.Project("default", {projectName: name});
/// const defaultStore = new alicloud.log.Store("default", {
///     logstoreName: name,
///     projectName: _default.projectName,
/// });
/// const defaultDelivery = new alicloud.cfg.Delivery("default", {
///     configurationItemChangeNotification: true,
///     nonCompliantNotification: true,
///     deliveryChannelName: name,
///     deliveryChannelTargetArn: pulumi.all([thisGetRegions, _this, _default.projectName, defaultStore.logstoreName]).apply(([thisGetRegions, _this, projectName, logstoreName]) => `acs:log:${thisGetRegions.ids?.[0]}:${_this.id}:project/${projectName}/logstore/${logstoreName}`),
///     deliveryChannelType: "SLS",
///     description: name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example-sls"
/// this = alicloud.get_account()
/// this_get_regions = alicloud.get_regions(current=True)
/// default = alicloud.log.Project("default", project_name=name)
/// default_store = alicloud.log.Store("default",
///     logstore_name=name,
///     project_name=default.project_name)
/// default_delivery = alicloud.cfg.Delivery("default",
///     configuration_item_change_notification=True,
///     non_compliant_notification=True,
///     delivery_channel_name=name,
///     delivery_channel_target_arn=pulumi.Output.all(
///         project_name=default.project_name,
///         logstore_name=default_store.logstore_name
/// ).apply(lambda resolved_outputs: f"acs:log:{this_get_regions.ids[0]}:{this.id}:project/{resolved_outputs['project_name']}/logstore/{resolved_outputs['logstore_name']}")
/// ,
///     delivery_channel_type="SLS",
///     description=name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf-example-sls";
///     var @this = AliCloud.GetAccount.Invoke();
///
///     var thisGetRegions = AliCloud.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     var @default = new AliCloud.Log.Project("default", new()
///     {
///         ProjectName = name,
///     });
///
///     var defaultStore = new AliCloud.Log.Store("default", new()
///     {
///         LogstoreName = name,
///         ProjectName = @default.ProjectName,
///     });
///
///     var defaultDelivery = new AliCloud.Cfg.Delivery("default", new()
///     {
///         ConfigurationItemChangeNotification = true,
///         NonCompliantNotification = true,
///         DeliveryChannelName = name,
///         DeliveryChannelTargetArn = Output.Tuple(thisGetRegions, @this, @default.ProjectName, defaultStore.LogstoreName).Apply(values =>
///         {
///             var thisGetRegions = values.Item1;
///             var @this = values.Item2;
///             var projectName = values.Item3;
///             var logstoreName = values.Item4;
///             return $"acs:log:{thisGetRegions.Apply(getRegionsResult => getRegionsResult.Ids[0])}:{@this.Apply(getAccountResult => getAccountResult.Id)}:project/{projectName}/logstore/{logstoreName}";
///         }),
///         DeliveryChannelType = "SLS",
///         Description = name,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cfg"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/log"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf-example-sls"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		this, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		thisGetRegions, err := alicloud.GetRegions(ctx, &alicloud.GetRegionsArgs{
/// 			Current: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := log.NewProject(ctx, "default", &log.ProjectArgs{
/// 			ProjectName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultStore, err := log.NewStore(ctx, "default", &log.StoreArgs{
/// 			LogstoreName: pulumi.String(name),
/// 			ProjectName:  _default.ProjectName,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cfg.NewDelivery(ctx, "default", &cfg.DeliveryArgs{
/// 			ConfigurationItemChangeNotification: pulumi.Bool(true),
/// 			NonCompliantNotification:            pulumi.Bool(true),
/// 			DeliveryChannelName:                 pulumi.String(name),
/// 			DeliveryChannelTargetArn: pulumi.All(_default.ProjectName, defaultStore.LogstoreName).ApplyT(func(_args []interface{}) (string, error) {
/// 				projectName := _args[0].(string)
/// 				logstoreName := _args[1].(string)
/// 				return fmt.Sprintf("acs:log:%v:%v:project/%v/logstore/%v", thisGetRegions.Ids[0], this.Id, projectName, logstoreName), nil
/// 			}).(pulumi.StringOutput),
/// 			DeliveryChannelType: pulumi.String("SLS"),
/// 			Description:         pulumi.String(name),
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
/// import com.pulumi.alicloud.log.Project;
/// import com.pulumi.alicloud.log.ProjectArgs;
/// import com.pulumi.alicloud.log.Store;
/// import com.pulumi.alicloud.log.StoreArgs;
/// import com.pulumi.alicloud.cfg.Delivery;
/// import com.pulumi.alicloud.cfg.DeliveryArgs;
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
///         final var name = config.get("name").orElse("tf-example-sls");
///         final var this = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         final var thisGetRegions = AlicloudFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         var default_ = new Project("default", ProjectArgs.builder()
///             .projectName(name)
///             .build());
///
///         var defaultStore = new Store("defaultStore", StoreArgs.builder()
///             .logstoreName(name)
///             .projectName(default_.projectName())
///             .build());
///
///         var defaultDelivery = new Delivery("defaultDelivery", DeliveryArgs.builder()
///             .configurationItemChangeNotification(true)
///             .nonCompliantNotification(true)
///             .deliveryChannelName(name)
///             .deliveryChannelTargetArn(Output.tuple(default_.projectName(), defaultStore.logstoreName()).applyValue(values -> {
///                 var projectName = values.t1;
///                 var logstoreName = values.t2;
///                 return String.format("acs:log:%s:%s:project/%s/logstore/%s", thisGetRegions.ids()[0],this_.id(),projectName,logstoreName);
///             }))
///             .deliveryChannelType("SLS")
///             .description(name)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example-sls
/// resources:
///   default:
///     type: alicloud:log:Project
///     properties:
///       projectName: ${name}
///   defaultStore:
///     type: alicloud:log:Store
///     name: default
///     properties:
///       logstoreName: ${name}
///       projectName: ${default.projectName}
///   defaultDelivery:
///     type: alicloud:cfg:Delivery
///     name: default
///     properties:
///       configurationItemChangeNotification: true
///       nonCompliantNotification: true
///       deliveryChannelName: ${name}
///       deliveryChannelTargetArn: acs:log:${thisGetRegions.ids[0]}:${this.id}:project/${default.projectName}/logstore/${defaultStore.logstoreName}
///       deliveryChannelType: SLS
///       description: ${name}
/// variables:
///   this:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
///   thisGetRegions:
///     fn::invoke:
///       function: alicloud:getRegions
///       arguments:
///         current: true
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Config Delivery can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cfg/delivery:Delivery example <id>
/// ```
class Delivery extends pulumi.CustomResource {
  /// Indicates whether the specified destination receives resource change logs. If the value of this parameter is true, Cloud Config delivers the resource change logs to OSS, Log Service, or MNS when the configurations of the resources change. Valid values:
  /// - true: The specified destination receives resource change logs.
  /// - false: The specified destination does not receive resource change logs.
  late final pulumi.Output<bool?> configurationItemChangeNotification;
  /// Indicates whether the specified destination receives scheduled resource snapshots. Cloud Config delivers scheduled resource snapshots at 04:00Z and 16:00Z to OSS, MNS, or Log Service every day. The time is displayed in UTC. Valid values:
  /// - true: The specified destination receives scheduled resource snapshots.
  /// - false: The specified destination does not receive scheduled resource snapshots.
  late final pulumi.Output<bool?> configurationSnapshot;
  /// The rule that is attached to the delivery channel.
  ///
  /// This parameter is available when you deliver data of all types to MNS or deliver snapshots to Log Service.
  ///
  /// If you specify the risk level or resource types for subscription events, this is as follows:
  ///
  /// The lowest risk level of the events to which you want to subscribe is in the following format: {"filterType":"RuleRiskLevel","value":"1","multiple":false}, The value field indicates the risk level of the events to which you want to subscribe. Valid values: 1, 2, and 3. The value 1 indicates the high risk level, the value 2 indicates the medium risk level, and the value 3 indicates the low risk level.
  ///
  /// The setting of the resource types of the events to which you want to subscribe is in the following format: {"filterType":"ResourceType","values":["ACS::ACK::Cluster","ACS::ActionTrail::Trail","ACS::CBWP::CommonBandwidthPackage"],"multiple":true}, The values field indicates the resource types of the events to which you want to subscribe. The value of the field is a JSON array.
  ///
  /// Examples:[{"filterType":"ResourceType","values":["ACS::ActionTrail::Trail","ACS::CBWP::CommonBandwidthPackage","ACS::CDN::Domain","ACS::CEN::CenBandwidthPackage","ACS::CEN::CenInstance","ACS::CEN::Flowlog","ACS::DdosCoo::Instance"],"multiple":true}].
  late final pulumi.Output<String?> deliveryChannelCondition;
  /// The name of the delivery channel.
  late final pulumi.Output<String?> deliveryChannelName;
  /// The ARN of the delivery destination.
  /// - If the value of the DeliveryChannelType parameter is OSS, the value of this parameter is the ARN of the destination OSS bucket.
  /// - If the value of the DeliveryChannelType parameter is MNS, the value of this parameter is the ARN of the destination MNS topic.
  /// - If the value of the DeliveryChannelType parameter is SLS, the value of this parameter is the ARN of the destination Log Service Logstore.
  late final pulumi.Output<String> deliveryChannelTargetArn;
  /// The type of the delivery channel. Valid values:
  /// - OSS: Object Storage Service (OSS)
  /// - MNS: Message Service (MNS)
  /// - SLS: Log Service
  late final pulumi.Output<String> deliveryChannelType;
  /// The description of the delivery channel.
  late final pulumi.Output<String?> description;
  /// Indicates whether the specified destination receives resource non-compliance events. If the value of this parameter is true, Cloud Config delivers resource non-compliance events to Log Service or MNS when resources are evaluated as non-compliant. Valid values:
  /// - true: The specified destination receives resource non-compliance events.
  /// - false: The specified destination does not receive resource non-compliance events.
  late final pulumi.Output<bool?> nonCompliantNotification;
  /// The oss ARN of the delivery channel when the value data oversized limit.  The value must be in one of the following formats:  acs:oss:{RegionId}:{Aliuid}:{bucketName} if your delivery destination is an Object Storage Service (OSS) bucket.
  late final pulumi.Output<String?> oversizedDataOssTargetArn;
  /// The status of the delivery channel. Valid values:
  /// - 0: The delivery channel is disabled.
  /// - 1: The delivery channel is enabled.
  late final pulumi.Output<int> status;

  /// Creates a new [Delivery].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Delivery]. {@macro pulumi_cfg_delivery_delivery_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Delivery(
    String name, {
    DeliveryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cfg/delivery:Delivery',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    configurationItemChangeNotification = registerOutput<bool?>('configurationItemChangeNotification');
    configurationSnapshot = registerOutput<bool?>('configurationSnapshot');
    deliveryChannelCondition = registerOutput<String?>('deliveryChannelCondition');
    deliveryChannelName = registerOutput<String?>('deliveryChannelName');
    deliveryChannelTargetArn = registerOutput<String>('deliveryChannelTargetArn');
    deliveryChannelType = registerOutput<String>('deliveryChannelType');
    description = registerOutput<String?>('description');
    nonCompliantNotification = registerOutput<bool?>('nonCompliantNotification');
    oversizedDataOssTargetArn = registerOutput<String?>('oversizedDataOssTargetArn');
    status = registerOutput<int>('status');
  }

  /// Gets an existing [Delivery] resource's state with the given [name] and [id].
  static Delivery get(
    String name,
    pulumi.Input<String> id, {
    DeliveryState? state,
  }) {
    return Delivery._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Delivery._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cfg/delivery:Delivery',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    configurationItemChangeNotification = registerOutput<bool?>('configurationItemChangeNotification');
    configurationSnapshot = registerOutput<bool?>('configurationSnapshot');
    deliveryChannelCondition = registerOutput<String?>('deliveryChannelCondition');
    deliveryChannelName = registerOutput<String?>('deliveryChannelName');
    deliveryChannelTargetArn = registerOutput<String>('deliveryChannelTargetArn');
    deliveryChannelType = registerOutput<String>('deliveryChannelType');
    description = registerOutput<String?>('description');
    nonCompliantNotification = registerOutput<bool?>('nonCompliantNotification');
    oversizedDataOssTargetArn = registerOutput<String?>('oversizedDataOssTargetArn');
    status = registerOutput<int>('status');
  }
}
