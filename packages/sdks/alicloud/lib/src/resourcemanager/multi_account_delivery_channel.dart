import 'package:pulumi/pulumi.dart' as pulumi;
import 'multi_account_delivery_channel_args.dart';
import 'multi_account_delivery_channel_delivery_channel_filter.dart';
import 'multi_account_delivery_channel_resource_change_delivery.dart';
import 'multi_account_delivery_channel_resource_snapshot_delivery.dart';
import 'multi_account_delivery_channel_state.dart';

/// Provides a Resource Manager Multi Account Delivery Channel resource.
///
/// Multi-account Resource Delivery Channel.
///
/// For information about Resource Manager Multi Account Delivery Channel and how to use it, see [What is Multi Account Delivery Channel](https://next.api.alibabacloud.com/document/ResourceCenter/2022-12-01/CreateMultiAccountDeliveryChannel).
///
/// > **NOTE:** Available since v1.262.0.
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
/// const name = config.get("name") || "terraform-example";
/// const defaultuHQ8Cu = new alicloud.resourcemanager.Folder("defaultuHQ8Cu", {folderName: "folder-aone-example-1"});
/// const defaultioI16p = new alicloud.resourcemanager.Folder("defaultioI16p", {folderName: "folder-aone-example-2"});
/// const default55Uum4 = new alicloud.resourcemanager.Folder("default55Uum4", {folderName: "folder-aone-example-3"});
/// const defaultiEjEbe = new alicloud.resourcemanager.Folder("defaultiEjEbe", {folderName: "folder-aone-example-4"});
/// const defaultdNL2TN = new alicloud.resourcemanager.Folder("defaultdNL2TN", {folderName: "folder-aone-example-5"});
/// const _default = new alicloud.resourcemanager.MultiAccountDeliveryChannel("default", {
///     resourceChangeDelivery: {
///         slsProperties: {
///             oversizedDataOssTargetArn: "acs:oss:cn-hangzhou:1511928242963727:resourcecenter-aone-example-delivery-oss",
///         },
///         targetArn: "acs:log:cn-hangzhou:1511928242963727:project/delivery-aone-example/logstore/resourcecenter-delivery-aone-example-sls",
///     },
///     deliveryChannelDescription: "multi_delivery_channel_resource_spec_mq_example",
///     multiAccountDeliveryChannelName: "multi_delivery_channel_resource_spec_mq_example",
///     deliveryChannelFilter: {
///         accountScopes: [
///             defaultuHQ8Cu.id,
///             defaultioI16p.id,
///             default55Uum4.id,
///         ],
///         resourceTypes: [
///             "ACS::ACK::Cluster",
///             "ACS::ActionTrail::Trail",
///             "ACS::BPStudio::Application",
///         ],
///     },
///     resourceSnapshotDelivery: {
///         deliveryTime: "16:00Z",
///         targetArn: "acs:log:cn-hangzhou:1511928242963727:project/delivery-aone-example/logstore/resourcecenter-delivery-aone-example-sls",
///         targetType: "SLS",
///         customExpression: "select * from resources limit 10;",
///         slsProperties: {
///             oversizedDataOssTargetArn: "acs:oss:cn-hangzhou:1511928242963727:resourcecenter-aone-example-delivery-oss",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// defaultu_hq8_cu = alicloud.resourcemanager.Folder("defaultuHQ8Cu", folder_name="folder-aone-example-1")
/// defaultio_i16p = alicloud.resourcemanager.Folder("defaultioI16p", folder_name="folder-aone-example-2")
/// default55_uum4 = alicloud.resourcemanager.Folder("default55Uum4", folder_name="folder-aone-example-3")
/// defaulti_ej_ebe = alicloud.resourcemanager.Folder("defaultiEjEbe", folder_name="folder-aone-example-4")
/// defaultd_nl2_tn = alicloud.resourcemanager.Folder("defaultdNL2TN", folder_name="folder-aone-example-5")
/// default = alicloud.resourcemanager.MultiAccountDeliveryChannel("default",
///     resource_change_delivery={
///         "sls_properties": {
///             "oversized_data_oss_target_arn": "acs:oss:cn-hangzhou:1511928242963727:resourcecenter-aone-example-delivery-oss",
///         },
///         "target_arn": "acs:log:cn-hangzhou:1511928242963727:project/delivery-aone-example/logstore/resourcecenter-delivery-aone-example-sls",
///     },
///     delivery_channel_description="multi_delivery_channel_resource_spec_mq_example",
///     multi_account_delivery_channel_name="multi_delivery_channel_resource_spec_mq_example",
///     delivery_channel_filter={
///         "account_scopes": [
///             defaultu_hq8_cu.id,
///             defaultio_i16p.id,
///             default55_uum4.id,
///         ],
///         "resource_types": [
///             "ACS::ACK::Cluster",
///             "ACS::ActionTrail::Trail",
///             "ACS::BPStudio::Application",
///         ],
///     },
///     resource_snapshot_delivery={
///         "delivery_time": "16:00Z",
///         "target_arn": "acs:log:cn-hangzhou:1511928242963727:project/delivery-aone-example/logstore/resourcecenter-delivery-aone-example-sls",
///         "target_type": "SLS",
///         "custom_expression": "select * from resources limit 10;",
///         "sls_properties": {
///             "oversized_data_oss_target_arn": "acs:oss:cn-hangzhou:1511928242963727:resourcecenter-aone-example-delivery-oss",
///         },
///     })
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
///     var name = config.Get("name") ?? "terraform-example";
///     var defaultuHQ8Cu = new AliCloud.ResourceManager.Folder("defaultuHQ8Cu", new()
///     {
///         FolderName = "folder-aone-example-1",
///     });
///
///     var defaultioI16p = new AliCloud.ResourceManager.Folder("defaultioI16p", new()
///     {
///         FolderName = "folder-aone-example-2",
///     });
///
///     var default55Uum4 = new AliCloud.ResourceManager.Folder("default55Uum4", new()
///     {
///         FolderName = "folder-aone-example-3",
///     });
///
///     var defaultiEjEbe = new AliCloud.ResourceManager.Folder("defaultiEjEbe", new()
///     {
///         FolderName = "folder-aone-example-4",
///     });
///
///     var defaultdNL2TN = new AliCloud.ResourceManager.Folder("defaultdNL2TN", new()
///     {
///         FolderName = "folder-aone-example-5",
///     });
///
///     var @default = new AliCloud.ResourceManager.MultiAccountDeliveryChannel("default", new()
///     {
///         ResourceChangeDelivery = new AliCloud.ResourceManager.Inputs.MultiAccountDeliveryChannelResourceChangeDeliveryArgs
///         {
///             SlsProperties = new AliCloud.ResourceManager.Inputs.MultiAccountDeliveryChannelResourceChangeDeliverySlsPropertiesArgs
///             {
///                 OversizedDataOssTargetArn = "acs:oss:cn-hangzhou:1511928242963727:resourcecenter-aone-example-delivery-oss",
///             },
///             TargetArn = "acs:log:cn-hangzhou:1511928242963727:project/delivery-aone-example/logstore/resourcecenter-delivery-aone-example-sls",
///         },
///         DeliveryChannelDescription = "multi_delivery_channel_resource_spec_mq_example",
///         MultiAccountDeliveryChannelName = "multi_delivery_channel_resource_spec_mq_example",
///         DeliveryChannelFilter = new AliCloud.ResourceManager.Inputs.MultiAccountDeliveryChannelDeliveryChannelFilterArgs
///         {
///             AccountScopes = new[]
///             {
///                 defaultuHQ8Cu.Id,
///                 defaultioI16p.Id,
///                 default55Uum4.Id,
///             },
///             ResourceTypes = new[]
///             {
///                 "ACS::ACK::Cluster",
///                 "ACS::ActionTrail::Trail",
///                 "ACS::BPStudio::Application",
///             },
///         },
///         ResourceSnapshotDelivery = new AliCloud.ResourceManager.Inputs.MultiAccountDeliveryChannelResourceSnapshotDeliveryArgs
///         {
///             DeliveryTime = "16:00Z",
///             TargetArn = "acs:log:cn-hangzhou:1511928242963727:project/delivery-aone-example/logstore/resourcecenter-delivery-aone-example-sls",
///             TargetType = "SLS",
///             CustomExpression = "select * from resources limit 10;",
///             SlsProperties = new AliCloud.ResourceManager.Inputs.MultiAccountDeliveryChannelResourceSnapshotDeliverySlsPropertiesArgs
///             {
///                 OversizedDataOssTargetArn = "acs:oss:cn-hangzhou:1511928242963727:resourcecenter-aone-example-delivery-oss",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
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
/// 		defaultuHQ8Cu, err := resourcemanager.NewFolder(ctx, "defaultuHQ8Cu", &resourcemanager.FolderArgs{
/// 			FolderName: pulumi.String("folder-aone-example-1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultioI16p, err := resourcemanager.NewFolder(ctx, "defaultioI16p", &resourcemanager.FolderArgs{
/// 			FolderName: pulumi.String("folder-aone-example-2"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		default55Uum4, err := resourcemanager.NewFolder(ctx, "default55Uum4", &resourcemanager.FolderArgs{
/// 			FolderName: pulumi.String("folder-aone-example-3"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = resourcemanager.NewFolder(ctx, "defaultiEjEbe", &resourcemanager.FolderArgs{
/// 			FolderName: pulumi.String("folder-aone-example-4"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = resourcemanager.NewFolder(ctx, "defaultdNL2TN", &resourcemanager.FolderArgs{
/// 			FolderName: pulumi.String("folder-aone-example-5"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = resourcemanager.NewMultiAccountDeliveryChannel(ctx, "default", &resourcemanager.MultiAccountDeliveryChannelArgs{
/// 			ResourceChangeDelivery: &resourcemanager.MultiAccountDeliveryChannelResourceChangeDeliveryArgs{
/// 				SlsProperties: &resourcemanager.MultiAccountDeliveryChannelResourceChangeDeliverySlsPropertiesArgs{
/// 					OversizedDataOssTargetArn: pulumi.String("acs:oss:cn-hangzhou:1511928242963727:resourcecenter-aone-example-delivery-oss"),
/// 				},
/// 				TargetArn: pulumi.String("acs:log:cn-hangzhou:1511928242963727:project/delivery-aone-example/logstore/resourcecenter-delivery-aone-example-sls"),
/// 			},
/// 			DeliveryChannelDescription:      pulumi.String("multi_delivery_channel_resource_spec_mq_example"),
/// 			MultiAccountDeliveryChannelName: pulumi.String("multi_delivery_channel_resource_spec_mq_example"),
/// 			DeliveryChannelFilter: &resourcemanager.MultiAccountDeliveryChannelDeliveryChannelFilterArgs{
/// 				AccountScopes: pulumi.StringArray{
/// 					defaultuHQ8Cu.ID(),
/// 					defaultioI16p.ID(),
/// 					default55Uum4.ID(),
/// 				},
/// 				ResourceTypes: pulumi.StringArray{
/// 					pulumi.String("ACS::ACK::Cluster"),
/// 					pulumi.String("ACS::ActionTrail::Trail"),
/// 					pulumi.String("ACS::BPStudio::Application"),
/// 				},
/// 			},
/// 			ResourceSnapshotDelivery: &resourcemanager.MultiAccountDeliveryChannelResourceSnapshotDeliveryArgs{
/// 				DeliveryTime:     pulumi.String("16:00Z"),
/// 				TargetArn:        pulumi.String("acs:log:cn-hangzhou:1511928242963727:project/delivery-aone-example/logstore/resourcecenter-delivery-aone-example-sls"),
/// 				TargetType:       pulumi.String("SLS"),
/// 				CustomExpression: pulumi.String("select * from resources limit 10;"),
/// 				SlsProperties: &resourcemanager.MultiAccountDeliveryChannelResourceSnapshotDeliverySlsPropertiesArgs{
/// 					OversizedDataOssTargetArn: pulumi.String("acs:oss:cn-hangzhou:1511928242963727:resourcecenter-aone-example-delivery-oss"),
/// 				},
/// 			},
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
/// import com.pulumi.alicloud.resourcemanager.Folder;
/// import com.pulumi.alicloud.resourcemanager.FolderArgs;
/// import com.pulumi.alicloud.resourcemanager.MultiAccountDeliveryChannel;
/// import com.pulumi.alicloud.resourcemanager.MultiAccountDeliveryChannelArgs;
/// import com.pulumi.alicloud.resourcemanager.inputs.MultiAccountDeliveryChannelResourceChangeDeliveryArgs;
/// import com.pulumi.alicloud.resourcemanager.inputs.MultiAccountDeliveryChannelResourceChangeDeliverySlsPropertiesArgs;
/// import com.pulumi.alicloud.resourcemanager.inputs.MultiAccountDeliveryChannelDeliveryChannelFilterArgs;
/// import com.pulumi.alicloud.resourcemanager.inputs.MultiAccountDeliveryChannelResourceSnapshotDeliveryArgs;
/// import com.pulumi.alicloud.resourcemanager.inputs.MultiAccountDeliveryChannelResourceSnapshotDeliverySlsPropertiesArgs;
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
///         var defaultuHQ8Cu = new Folder("defaultuHQ8Cu", FolderArgs.builder()
///             .folderName("folder-aone-example-1")
///             .build());
///
///         var defaultioI16p = new Folder("defaultioI16p", FolderArgs.builder()
///             .folderName("folder-aone-example-2")
///             .build());
///
///         var default55Uum4 = new Folder("default55Uum4", FolderArgs.builder()
///             .folderName("folder-aone-example-3")
///             .build());
///
///         var defaultiEjEbe = new Folder("defaultiEjEbe", FolderArgs.builder()
///             .folderName("folder-aone-example-4")
///             .build());
///
///         var defaultdNL2TN = new Folder("defaultdNL2TN", FolderArgs.builder()
///             .folderName("folder-aone-example-5")
///             .build());
///
///         var default_ = new MultiAccountDeliveryChannel("default", MultiAccountDeliveryChannelArgs.builder()
///             .resourceChangeDelivery(MultiAccountDeliveryChannelResourceChangeDeliveryArgs.builder()
///                 .slsProperties(MultiAccountDeliveryChannelResourceChangeDeliverySlsPropertiesArgs.builder()
///                     .oversizedDataOssTargetArn("acs:oss:cn-hangzhou:1511928242963727:resourcecenter-aone-example-delivery-oss")
///                     .build())
///                 .targetArn("acs:log:cn-hangzhou:1511928242963727:project/delivery-aone-example/logstore/resourcecenter-delivery-aone-example-sls")
///                 .build())
///             .deliveryChannelDescription("multi_delivery_channel_resource_spec_mq_example")
///             .multiAccountDeliveryChannelName("multi_delivery_channel_resource_spec_mq_example")
///             .deliveryChannelFilter(MultiAccountDeliveryChannelDeliveryChannelFilterArgs.builder()
///                 .accountScopes(
///                     defaultuHQ8Cu.id(),
///                     defaultioI16p.id(),
///                     default55Uum4.id())
///                 .resourceTypes(
///                     "ACS::ACK::Cluster",
///                     "ACS::ActionTrail::Trail",
///                     "ACS::BPStudio::Application")
///                 .build())
///             .resourceSnapshotDelivery(MultiAccountDeliveryChannelResourceSnapshotDeliveryArgs.builder()
///                 .deliveryTime("16:00Z")
///                 .targetArn("acs:log:cn-hangzhou:1511928242963727:project/delivery-aone-example/logstore/resourcecenter-delivery-aone-example-sls")
///                 .targetType("SLS")
///                 .customExpression("select * from resources limit 10;")
///                 .slsProperties(MultiAccountDeliveryChannelResourceSnapshotDeliverySlsPropertiesArgs.builder()
///                     .oversizedDataOssTargetArn("acs:oss:cn-hangzhou:1511928242963727:resourcecenter-aone-example-delivery-oss")
///                     .build())
///                 .build())
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
///   defaultuHQ8Cu:
///     type: alicloud:resourcemanager:Folder
///     properties:
///       folderName: folder-aone-example-1
///   defaultioI16p:
///     type: alicloud:resourcemanager:Folder
///     properties:
///       folderName: folder-aone-example-2
///   default55Uum4:
///     type: alicloud:resourcemanager:Folder
///     properties:
///       folderName: folder-aone-example-3
///   defaultiEjEbe:
///     type: alicloud:resourcemanager:Folder
///     properties:
///       folderName: folder-aone-example-4
///   defaultdNL2TN:
///     type: alicloud:resourcemanager:Folder
///     properties:
///       folderName: folder-aone-example-5
///   default:
///     type: alicloud:resourcemanager:MultiAccountDeliveryChannel
///     properties:
///       resourceChangeDelivery:
///         slsProperties:
///           oversizedDataOssTargetArn: acs:oss:cn-hangzhou:1511928242963727:resourcecenter-aone-example-delivery-oss
///         targetArn: acs:log:cn-hangzhou:1511928242963727:project/delivery-aone-example/logstore/resourcecenter-delivery-aone-example-sls
///       deliveryChannelDescription: multi_delivery_channel_resource_spec_mq_example
///       multiAccountDeliveryChannelName: multi_delivery_channel_resource_spec_mq_example
///       deliveryChannelFilter:
///         accountScopes:
///           - ${defaultuHQ8Cu.id}
///           - ${defaultioI16p.id}
///           - ${default55Uum4.id}
///         resourceTypes:
///           - ACS::ACK::Cluster
///           - ACS::ActionTrail::Trail
///           - ACS::BPStudio::Application
///       resourceSnapshotDelivery:
///         deliveryTime: 16:00Z
///         targetArn: acs:log:cn-hangzhou:1511928242963727:project/delivery-aone-example/logstore/resourcecenter-delivery-aone-example-sls
///         targetType: SLS
///         customExpression: select * from resources limit 10;
///         slsProperties:
///           oversizedDataOssTargetArn: acs:oss:cn-hangzhou:1511928242963727:resourcecenter-aone-example-delivery-oss
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Resource Manager Multi Account Delivery Channel can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:resourcemanager/multiAccountDeliveryChannel:MultiAccountDeliveryChannel example <id>
/// ```
class MultiAccountDeliveryChannel extends pulumi.CustomResource {
  /// The description of the delivery channel.
  late final pulumi.Output<String> deliveryChannelDescription;
  /// The effective scope of the delivery channel. See `delivery_channel_filter` below.
  late final pulumi.Output<MultiAccountDeliveryChannelDeliveryChannelFilter> deliveryChannelFilter;
  /// The name of the delivery channel.
  late final pulumi.Output<String> multiAccountDeliveryChannelName;
  /// The configurations for delivery of resource configuration change events. See `resource_change_delivery` below.
  late final pulumi.Output<MultiAccountDeliveryChannelResourceChangeDelivery?> resourceChangeDelivery;
  /// The configurations for delivery of scheduled resource snapshots. See `resource_snapshot_delivery` below.
  late final pulumi.Output<MultiAccountDeliveryChannelResourceSnapshotDelivery?> resourceSnapshotDelivery;

  /// Creates a new [MultiAccountDeliveryChannel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MultiAccountDeliveryChannel]. {@macro pulumi_resourcemanager_multi_account_delivery_channel_multi_account_delivery_channel_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MultiAccountDeliveryChannel(
    String name, {
    MultiAccountDeliveryChannelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:resourcemanager/multiAccountDeliveryChannel:MultiAccountDeliveryChannel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.deliveryChannelDescription = registerOutput<String>('deliveryChannelDescription');
    this.deliveryChannelFilter = registerOutput<MultiAccountDeliveryChannelDeliveryChannelFilter>('deliveryChannelFilter');
    this.multiAccountDeliveryChannelName = registerOutput<String>('multiAccountDeliveryChannelName');
    this.resourceChangeDelivery = registerOutput<MultiAccountDeliveryChannelResourceChangeDelivery?>('resourceChangeDelivery');
    this.resourceSnapshotDelivery = registerOutput<MultiAccountDeliveryChannelResourceSnapshotDelivery?>('resourceSnapshotDelivery');
  }

  /// Gets an existing [MultiAccountDeliveryChannel] resource's state with the given [name] and [id].
  static MultiAccountDeliveryChannel get(
    String name,
    pulumi.Input<String> id, {
    MultiAccountDeliveryChannelState? state,
  }) {
    return MultiAccountDeliveryChannel._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MultiAccountDeliveryChannel._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:resourcemanager/multiAccountDeliveryChannel:MultiAccountDeliveryChannel',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.deliveryChannelDescription = registerOutput<String>('deliveryChannelDescription');
    this.deliveryChannelFilter = registerOutput<MultiAccountDeliveryChannelDeliveryChannelFilter>('deliveryChannelFilter');
    this.multiAccountDeliveryChannelName = registerOutput<String>('multiAccountDeliveryChannelName');
    this.resourceChangeDelivery = registerOutput<MultiAccountDeliveryChannelResourceChangeDelivery?>('resourceChangeDelivery');
    this.resourceSnapshotDelivery = registerOutput<MultiAccountDeliveryChannelResourceSnapshotDelivery?>('resourceSnapshotDelivery');
  }
}
