import 'package:pulumi/pulumi.dart' as pulumi;
import 'aggregate_delivery_args.dart';
import 'aggregate_delivery_state.dart';

/// Provides a Config Aggregate Delivery resource.
///
/// Delivery channel of aggregator.
///
/// For information about Config Aggregate Delivery and how to use it, see [What is Aggregate Delivery](https://www.alibabacloud.com/help/en/cloud-config/latest/api-config-2020-09-07-createaggregateconfigdeliverychannel).
///
/// &gt; **NOTE:** Available since v1.172.0.
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
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf_example";
/// const _this = alicloud.getRegions({
///     current: true,
/// });
/// const thisGetAccount = alicloud.getAccount({});
/// const _default = alicloud.resourcemanager.getAccounts({
///     status: "CreateSuccess",
/// });
/// const last = _default.then(_default => _default.accounts).length.apply(length => length - 1);
/// const defaultAggregator = new alicloud.cfg.Aggregator("default", {
///     aggregatorAccounts: [{
///         accountId: _default.then(_default => _default.accounts[last].accountId),
///         accountName: _default.then(_default => _default.accounts[last].displayName),
///         accountType: "ResourceDirectory",
///     }],
///     aggregatorName: name,
///     description: name,
///     aggregatorType: "CUSTOM",
/// });
/// const defaultUuid = new random.index.Uuid("default", {});
/// const defaultProject = new alicloud.log.Project("default", {projectName: std.replace({
///     text: defaultUuid.result,
///     search: "-",
///     replace: "",
/// }).then(invoke => std.substr({
///     input: `tf-example-${invoke.result}`,
///     offset: 0,
///     length: 16,
/// })).then(invoke => invoke.result)});
/// const defaultStore = new alicloud.log.Store("default", {
///     logstoreName: name,
///     projectName: defaultProject.projectName,
/// });
/// const defaultAggregateDelivery = new alicloud.cfg.AggregateDelivery("default", {
///     aggregatorId: defaultAggregator.id,
///     configurationItemChangeNotification: true,
///     nonCompliantNotification: true,
///     deliveryChannelName: name,
///     deliveryChannelTargetArn: pulumi.all([_this, thisGetAccount, defaultProject.projectName, defaultStore.logstoreName]).apply(([_this, thisGetAccount, projectName, logstoreName]) => `acs:log:${_this.ids?.[0]}:${thisGetAccount.id}:project/${projectName}/logstore/${logstoreName}`),
///     deliveryChannelType: "SLS",
///     description: name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf_example"
/// this = alicloud.get_regions(current=True)
/// this_get_account = alicloud.get_account()
/// default = alicloud.resourcemanager.get_accounts(status="CreateSuccess")
/// last = len(default.accounts).apply(lambda length: length - 1)
/// default_aggregator = alicloud.cfg.Aggregator("default",
///     aggregator_accounts=[{
///         "account_id": default.accounts[last].account_id,
///         "account_name": default.accounts[last].display_name,
///         "account_type": "ResourceDirectory",
///     }],
///     aggregator_name=name,
///     description=name,
///     aggregator_type="CUSTOM")
/// default_uuid = random.index.Uuid("default")
/// default_project = alicloud.log.Project("default", project_name=std.substr(input=f"tf-example-{std.replace(text=default_uuid['result'],
///         search='-',
///         replace='').result}",
///     offset=0,
///     length=16).result)
/// default_store = alicloud.log.Store("default",
///     logstore_name=name,
///     project_name=default_project.project_name)
/// default_aggregate_delivery = alicloud.cfg.AggregateDelivery("default",
///     aggregator_id=default_aggregator.id,
///     configuration_item_change_notification=True,
///     non_compliant_notification=True,
///     delivery_channel_name=name,
///     delivery_channel_target_arn=pulumi.Output.all(
///         project_name=default_project.project_name,
///         logstore_name=default_store.logstore_name
/// ).apply(lambda resolved_outputs: f"acs:log:{this.ids[0]}:{this_get_account.id}:project/{resolved_outputs['project_name']}/logstore/{resolved_outputs['logstore_name']}")
/// ,
///     delivery_channel_type="SLS",
///     description=name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf_example";
///     var @this = AliCloud.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     var thisGetAccount = AliCloud.GetAccount.Invoke();
///
///     var @default = AliCloud.ResourceManager.GetAccounts.Invoke(new()
///     {
///         Status = "CreateSuccess",
///     });
///
///     var last = @default.Apply(@default => @default.Apply(getAccountsResult => getAccountsResult.Accounts)).Length.Apply(length => length - 1);
///
///     var defaultAggregator = new AliCloud.Cfg.Aggregator("default", new()
///     {
///         AggregatorAccounts = new[]
///         {
///             new AliCloud.Cfg.Inputs.AggregatorAggregatorAccountArgs
///             {
///                 AccountId = @default.Apply(@default => @default.Apply(getAccountsResult => getAccountsResult.Accounts)[last].AccountId),
///                 AccountName = @default.Apply(@default => @default.Apply(getAccountsResult => getAccountsResult.Accounts)[last].DisplayName),
///                 AccountType = "ResourceDirectory",
///             },
///         },
///         AggregatorName = name,
///         Description = name,
///         AggregatorType = "CUSTOM",
///     });
///
///     var defaultUuid = new Random.Index.Uuid("default");
///
///     var defaultProject = new AliCloud.Log.Project("default", new()
///     {
///         ProjectName = Std.Replace.Invoke(new()
///         {
///             Text = defaultUuid.Result,
///             Search = "-",
///             Replace = "",
///         }).Apply(invoke => Std.Substr.Invoke(new()
///         {
///             Input = $"tf-example-{invoke.Result}",
///             Offset = 0,
///             Length = 16,
///         })).Apply(invoke => invoke.Result),
///     });
///
///     var defaultStore = new AliCloud.Log.Store("default", new()
///     {
///         LogstoreName = name,
///         ProjectName = defaultProject.ProjectName,
///     });
///
///     var defaultAggregateDelivery = new AliCloud.Cfg.AggregateDelivery("default", new()
///     {
///         AggregatorId = defaultAggregator.Id,
///         ConfigurationItemChangeNotification = true,
///         NonCompliantNotification = true,
///         DeliveryChannelName = name,
///         DeliveryChannelTargetArn = Output.Tuple(@this, thisGetAccount, defaultProject.ProjectName, defaultStore.LogstoreName).Apply(values =>
///         {
///             var @this = values.Item1;
///             var thisGetAccount = values.Item2;
///             var projectName = values.Item3;
///             var logstoreName = values.Item4;
///             return $"acs:log:{@this.Apply(getRegionsResult => getRegionsResult.Ids[0])}:{thisGetAccount.Apply(getAccountResult => getAccountResult.Id)}:project/{projectName}/logstore/{logstoreName}";
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		this, err := alicloud.GetRegions(ctx, &alicloud.GetRegionsArgs{
/// 			Current: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		thisGetAccount, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := resourcemanager.GetAccounts(ctx, &resourcemanager.GetAccountsArgs{
/// 			Status: pulumi.StringRef("CreateSuccess"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		last := len(_default.Accounts).ApplyT(func(length int) (float64, error) {
/// 			return float64(length.ApplyT(func(__convert float64) (float64, error) {
/// 				return __convert - 1, nil
/// 			}).(pulumi.Float64Output)), nil
/// 		}).(pulumi.Float64Output)
/// 		defaultAggregator, err := cfg.NewAggregator(ctx, "default", &cfg.AggregatorArgs{
/// 			AggregatorAccounts: cfg.AggregatorAggregatorAccountArray{
/// 				&cfg.AggregatorAggregatorAccountArgs{
/// 					AccountId:   pulumi.String(_default.Accounts[last].AccountId),
/// 					AccountName: pulumi.String(_default.Accounts[last].DisplayName),
/// 					AccountType: pulumi.String("ResourceDirectory"),
/// 				},
/// 			},
/// 			AggregatorName: pulumi.String(name),
/// 			Description:    pulumi.String(name),
/// 			AggregatorType: pulumi.String("CUSTOM"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultUuid, err := random.NewUuid(ctx, "default", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeSubstr, err := std.Substr(ctx, &std.SubstrArgs{
/// 			Input: fmt.Sprintf("tf-example-%v", std.Replace(ctx, &std.ReplaceArgs{
/// 				Text:    defaultUuid.Result,
/// 				Search:  "-",
/// 				Replace: "",
/// 			}, nil).Result),
/// 			Offset: 0,
/// 			Length: 16,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultProject, err := log.NewProject(ctx, "default", &log.ProjectArgs{
/// 			ProjectName: pulumi.String(invokeSubstr.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultStore, err := log.NewStore(ctx, "default", &log.StoreArgs{
/// 			LogstoreName: pulumi.String(name),
/// 			ProjectName:  defaultProject.ProjectName,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cfg.NewAggregateDelivery(ctx, "default", &cfg.AggregateDeliveryArgs{
/// 			AggregatorId:                        defaultAggregator.ID(),
/// 			ConfigurationItemChangeNotification: pulumi.Bool(true),
/// 			NonCompliantNotification:            pulumi.Bool(true),
/// 			DeliveryChannelName:                 pulumi.String(name),
/// 			DeliveryChannelTargetArn: pulumi.All(defaultProject.ProjectName, defaultStore.LogstoreName).ApplyT(func(_args []interface{}) (string, error) {
/// 				projectName := _args[0].(string)
/// 				logstoreName := _args[1].(string)
/// 				return fmt.Sprintf("acs:log:%v:%v:project/%v/logstore/%v", this.Ids[0], thisGetAccount.Id, projectName, logstoreName), nil
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetAccountsArgs;
/// import com.pulumi.alicloud.cfg.Aggregator;
/// import com.pulumi.alicloud.cfg.AggregatorArgs;
/// import com.pulumi.alicloud.cfg.inputs.AggregatorAggregatorAccountArgs;
/// import com.pulumi.random.Uuid;
/// import com.pulumi.alicloud.log.Project;
/// import com.pulumi.alicloud.log.ProjectArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.ReplaceArgs;
/// import com.pulumi.std.inputs.SubstrArgs;
/// import com.pulumi.alicloud.log.Store;
/// import com.pulumi.alicloud.log.StoreArgs;
/// import com.pulumi.alicloud.cfg.AggregateDelivery;
/// import com.pulumi.alicloud.cfg.AggregateDeliveryArgs;
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
///         final var name = config.get("name").orElse("tf_example");
///         final var this = AlicloudFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         final var thisGetAccount = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         final var default = ResourcemanagerFunctions.getAccounts(GetAccountsArgs.builder()
///             .status("CreateSuccess")
///             .build());
///
///         final var last = default_.accounts().length().applyValue(_length -> _length - 1);
///
///         var defaultAggregator = new Aggregator("defaultAggregator", AggregatorArgs.builder()
///             .aggregatorAccounts(AggregatorAggregatorAccountArgs.builder()
///                 .accountId(default_.accounts()[last].accountId())
///                 .accountName(default_.accounts()[last].displayName())
///                 .accountType("ResourceDirectory")
///                 .build())
///             .aggregatorName(name)
///             .description(name)
///             .aggregatorType("CUSTOM")
///             .build());
///
///         var defaultUuid = new Uuid("defaultUuid");
///
///         var defaultProject = new Project("defaultProject", ProjectArgs.builder()
///             .projectName(StdFunctions.substr(SubstrArgs.builder()
///                 .input(String.format("tf-example-%s", StdFunctions.replace(ReplaceArgs.builder()
///                     .text(defaultUuid.result())
///                     .search("-")
///                     .replace("")
///                     .build()).result()))
///                 .offset(0)
///                 .length(16)
///                 .build()).result())
///             .build());
///
///         var defaultStore = new Store("defaultStore", StoreArgs.builder()
///             .logstoreName(name)
///             .projectName(defaultProject.projectName())
///             .build());
///
///         var defaultAggregateDelivery = new AggregateDelivery("defaultAggregateDelivery", AggregateDeliveryArgs.builder()
///             .aggregatorId(defaultAggregator.id())
///             .configurationItemChangeNotification(true)
///             .nonCompliantNotification(true)
///             .deliveryChannelName(name)
///             .deliveryChannelTargetArn(Output.tuple(defaultProject.projectName(), defaultStore.logstoreName()).applyValue(values -> {
///                 var projectName = values.t1;
///                 var logstoreName = values.t2;
///                 return String.format("acs:log:%s:%s:project/%s/logstore/%s", this_.ids()[0],thisGetAccount.id(),projectName,logstoreName);
///             }))
///             .deliveryChannelType("SLS")
///             .description(name)
///             .build());
///
///     }
/// }
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Config Aggregate Delivery can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cfg/aggregateDelivery:AggregateDelivery example <aggregator_id>:<delivery_channel_id>
/// ```
class AggregateDelivery extends pulumi.CustomResource {
  /// Aggregator ID.
  late final pulumi.Output<String> aggregatorId;
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
  /// The ID of the delivery method. This parameter is required when you modify a delivery method.
  late final pulumi.Output<String> deliveryChannelId;
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
  /// The description of the delivery method.
  late final pulumi.Output<String?> description;
  /// Indicates whether the specified destination receives resource non-compliance events. If the value of this parameter is true, Cloud Config delivers resource non-compliance events to Log Service or MNS when resources are evaluated as non-compliant. Valid values:
  /// - true: The specified destination receives resource non-compliance events.
  /// - false: The specified destination does not receive resource non-compliance events.
  late final pulumi.Output<bool?> nonCompliantNotification;
  /// The ARN of the OSS bucket to which the delivered data is transferred when the size of the data exceeds the specified upper limit of the delivery channel.
  late final pulumi.Output<String?> oversizedDataOssTargetArn;
  /// The status of the delivery method. Valid values:
  /// - 0: The delivery method is disabled.
  /// - 1: The delivery destination is enabled. This is the default value.
  late final pulumi.Output<int> status;

  /// Creates a new [AggregateDelivery].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AggregateDelivery]. {@macro pulumi_cfg_aggregate_delivery_aggregate_delivery_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AggregateDelivery(
    String name, {
    AggregateDeliveryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cfg/aggregateDelivery:AggregateDelivery',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aggregatorId = registerOutput<String>('aggregatorId');
    configurationItemChangeNotification = registerOutput<bool?>('configurationItemChangeNotification');
    configurationSnapshot = registerOutput<bool?>('configurationSnapshot');
    deliveryChannelCondition = registerOutput<String?>('deliveryChannelCondition');
    deliveryChannelId = registerOutput<String>('deliveryChannelId');
    deliveryChannelName = registerOutput<String?>('deliveryChannelName');
    deliveryChannelTargetArn = registerOutput<String>('deliveryChannelTargetArn');
    deliveryChannelType = registerOutput<String>('deliveryChannelType');
    description = registerOutput<String?>('description');
    nonCompliantNotification = registerOutput<bool?>('nonCompliantNotification');
    oversizedDataOssTargetArn = registerOutput<String?>('oversizedDataOssTargetArn');
    status = registerOutput<int>('status');
  }

  /// Gets an existing [AggregateDelivery] resource's state with the given [name] and [id].
  static AggregateDelivery get(
    String name,
    pulumi.Input<String> id, {
    AggregateDeliveryState? state,
  }) {
    return AggregateDelivery._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AggregateDelivery._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cfg/aggregateDelivery:AggregateDelivery',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aggregatorId = registerOutput<String>('aggregatorId');
    configurationItemChangeNotification = registerOutput<bool?>('configurationItemChangeNotification');
    configurationSnapshot = registerOutput<bool?>('configurationSnapshot');
    deliveryChannelCondition = registerOutput<String?>('deliveryChannelCondition');
    deliveryChannelId = registerOutput<String>('deliveryChannelId');
    deliveryChannelName = registerOutput<String?>('deliveryChannelName');
    deliveryChannelTargetArn = registerOutput<String>('deliveryChannelTargetArn');
    deliveryChannelType = registerOutput<String>('deliveryChannelType');
    description = registerOutput<String?>('description');
    nonCompliantNotification = registerOutput<bool?>('nonCompliantNotification');
    oversizedDataOssTargetArn = registerOutput<String?>('oversizedDataOssTargetArn');
    status = registerOutput<int>('status');
  }
}
