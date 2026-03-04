import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_channel_args.dart';
import 'delivery_channel_delivery_channel_filter.dart';
import 'delivery_channel_resource_change_delivery.dart';
import 'delivery_channel_resource_snapshot_delivery.dart';
import 'delivery_channel_state.dart';

/// Provides a Resource Manager Delivery Channel resource.
///
/// Delivery channel resources of current account.
///
/// For information about Resource Manager Delivery Channel and how to use it, see [What is Delivery Channel](https://next.api.alibabacloud.com/document/ResourceCenter/2022-12-01/CreateDeliveryChannel).
///
/// &gt; **NOTE:** Available since v1.262.0.
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
/// const _default = new alicloud.resourcemanager.DeliveryChannel("default", {
///     resourceChangeDelivery: {
///         slsProperties: {
///             oversizedDataOssTargetArn: "acs:oss:cn-hangzhou:1511928242963727:resourcecenter-aone-example-delivery-oss",
///         },
///         targetArn: "acs:log:cn-hangzhou:1511928242963727:project/delivery-aone-example/logstore/resourcecenter-delivery-aone-example-sls",
///     },
///     deliveryChannelName: "delivery_channel_resource_spec_example",
///     deliveryChannelDescription: "delivery_channel_resource_spec_example",
///     deliveryChannelFilter: {
///         resourceTypes: [
///             "ACS::ECS::Instance",
///             "ACS::ECS::Disk",
///             "ACS::VPC::VPC",
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
/// default = alicloud.resourcemanager.DeliveryChannel("default",
///     resource_change_delivery={
///         "sls_properties": {
///             "oversized_data_oss_target_arn": "acs:oss:cn-hangzhou:1511928242963727:resourcecenter-aone-example-delivery-oss",
///         },
///         "target_arn": "acs:log:cn-hangzhou:1511928242963727:project/delivery-aone-example/logstore/resourcecenter-delivery-aone-example-sls",
///     },
///     delivery_channel_name="delivery_channel_resource_spec_example",
///     delivery_channel_description="delivery_channel_resource_spec_example",
///     delivery_channel_filter={
///         "resource_types": [
///             "ACS::ECS::Instance",
///             "ACS::ECS::Disk",
///             "ACS::VPC::VPC",
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
///     var @default = new AliCloud.ResourceManager.DeliveryChannel("default", new()
///     {
///         ResourceChangeDelivery = new AliCloud.ResourceManager.Inputs.DeliveryChannelResourceChangeDeliveryArgs
///         {
///             SlsProperties = new AliCloud.ResourceManager.Inputs.DeliveryChannelResourceChangeDeliverySlsPropertiesArgs
///             {
///                 OversizedDataOssTargetArn = "acs:oss:cn-hangzhou:1511928242963727:resourcecenter-aone-example-delivery-oss",
///             },
///             TargetArn = "acs:log:cn-hangzhou:1511928242963727:project/delivery-aone-example/logstore/resourcecenter-delivery-aone-example-sls",
///         },
///         DeliveryChannelName = "delivery_channel_resource_spec_example",
///         DeliveryChannelDescription = "delivery_channel_resource_spec_example",
///         DeliveryChannelFilter = new AliCloud.ResourceManager.Inputs.DeliveryChannelDeliveryChannelFilterArgs
///         {
///             ResourceTypes = new[]
///             {
///                 "ACS::ECS::Instance",
///                 "ACS::ECS::Disk",
///                 "ACS::VPC::VPC",
///             },
///         },
///         ResourceSnapshotDelivery = new AliCloud.ResourceManager.Inputs.DeliveryChannelResourceSnapshotDeliveryArgs
///         {
///             DeliveryTime = "16:00Z",
///             TargetArn = "acs:log:cn-hangzhou:1511928242963727:project/delivery-aone-example/logstore/resourcecenter-delivery-aone-example-sls",
///             TargetType = "SLS",
///             CustomExpression = "select * from resources limit 10;",
///             SlsProperties = new AliCloud.ResourceManager.Inputs.DeliveryChannelResourceSnapshotDeliverySlsPropertiesArgs
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
/// 		_, err := resourcemanager.NewDeliveryChannel(ctx, "default", &resourcemanager.DeliveryChannelArgs{
/// 			ResourceChangeDelivery: &resourcemanager.DeliveryChannelResourceChangeDeliveryArgs{
/// 				SlsProperties: &resourcemanager.DeliveryChannelResourceChangeDeliverySlsPropertiesArgs{
/// 					OversizedDataOssTargetArn: pulumi.String("acs:oss:cn-hangzhou:1511928242963727:resourcecenter-aone-example-delivery-oss"),
/// 				},
/// 				TargetArn: pulumi.String("acs:log:cn-hangzhou:1511928242963727:project/delivery-aone-example/logstore/resourcecenter-delivery-aone-example-sls"),
/// 			},
/// 			DeliveryChannelName:        pulumi.String("delivery_channel_resource_spec_example"),
/// 			DeliveryChannelDescription: pulumi.String("delivery_channel_resource_spec_example"),
/// 			DeliveryChannelFilter: &resourcemanager.DeliveryChannelDeliveryChannelFilterArgs{
/// 				ResourceTypes: pulumi.StringArray{
/// 					pulumi.String("ACS::ECS::Instance"),
/// 					pulumi.String("ACS::ECS::Disk"),
/// 					pulumi.String("ACS::VPC::VPC"),
/// 				},
/// 			},
/// 			ResourceSnapshotDelivery: &resourcemanager.DeliveryChannelResourceSnapshotDeliveryArgs{
/// 				DeliveryTime:     pulumi.String("16:00Z"),
/// 				TargetArn:        pulumi.String("acs:log:cn-hangzhou:1511928242963727:project/delivery-aone-example/logstore/resourcecenter-delivery-aone-example-sls"),
/// 				TargetType:       pulumi.String("SLS"),
/// 				CustomExpression: pulumi.String("select * from resources limit 10;"),
/// 				SlsProperties: &resourcemanager.DeliveryChannelResourceSnapshotDeliverySlsPropertiesArgs{
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
/// import com.pulumi.alicloud.resourcemanager.DeliveryChannel;
/// import com.pulumi.alicloud.resourcemanager.DeliveryChannelArgs;
/// import com.pulumi.alicloud.resourcemanager.inputs.DeliveryChannelResourceChangeDeliveryArgs;
/// import com.pulumi.alicloud.resourcemanager.inputs.DeliveryChannelResourceChangeDeliverySlsPropertiesArgs;
/// import com.pulumi.alicloud.resourcemanager.inputs.DeliveryChannelDeliveryChannelFilterArgs;
/// import com.pulumi.alicloud.resourcemanager.inputs.DeliveryChannelResourceSnapshotDeliveryArgs;
/// import com.pulumi.alicloud.resourcemanager.inputs.DeliveryChannelResourceSnapshotDeliverySlsPropertiesArgs;
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
///         var default_ = new DeliveryChannel("default", DeliveryChannelArgs.builder()
///             .resourceChangeDelivery(DeliveryChannelResourceChangeDeliveryArgs.builder()
///                 .slsProperties(DeliveryChannelResourceChangeDeliverySlsPropertiesArgs.builder()
///                     .oversizedDataOssTargetArn("acs:oss:cn-hangzhou:1511928242963727:resourcecenter-aone-example-delivery-oss")
///                     .build())
///                 .targetArn("acs:log:cn-hangzhou:1511928242963727:project/delivery-aone-example/logstore/resourcecenter-delivery-aone-example-sls")
///                 .build())
///             .deliveryChannelName("delivery_channel_resource_spec_example")
///             .deliveryChannelDescription("delivery_channel_resource_spec_example")
///             .deliveryChannelFilter(DeliveryChannelDeliveryChannelFilterArgs.builder()
///                 .resourceTypes(
///                     "ACS::ECS::Instance",
///                     "ACS::ECS::Disk",
///                     "ACS::VPC::VPC")
///                 .build())
///             .resourceSnapshotDelivery(DeliveryChannelResourceSnapshotDeliveryArgs.builder()
///                 .deliveryTime("16:00Z")
///                 .targetArn("acs:log:cn-hangzhou:1511928242963727:project/delivery-aone-example/logstore/resourcecenter-delivery-aone-example-sls")
///                 .targetType("SLS")
///                 .customExpression("select * from resources limit 10;")
///                 .slsProperties(DeliveryChannelResourceSnapshotDeliverySlsPropertiesArgs.builder()
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
///   default:
///     type: alicloud:resourcemanager:DeliveryChannel
///     properties:
///       resourceChangeDelivery:
///         slsProperties:
///           oversizedDataOssTargetArn: acs:oss:cn-hangzhou:1511928242963727:resourcecenter-aone-example-delivery-oss
///         targetArn: acs:log:cn-hangzhou:1511928242963727:project/delivery-aone-example/logstore/resourcecenter-delivery-aone-example-sls
///       deliveryChannelName: delivery_channel_resource_spec_example
///       deliveryChannelDescription: delivery_channel_resource_spec_example
///       deliveryChannelFilter:
///         resourceTypes:
///           - ACS::ECS::Instance
///           - ACS::ECS::Disk
///           - ACS::VPC::VPC
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
/// Resource Manager Delivery Channel can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:resourcemanager/deliveryChannel:DeliveryChannel example <id>
/// ```
class DeliveryChannel extends pulumi.CustomResource {
  /// The description of the delivery channel.
  late final pulumi.Output<String?> deliveryChannelDescription;

  /// The effective scope of the delivery channel. See `delivery_channel_filter` below.
  late final pulumi.Output<DeliveryChannelDeliveryChannelFilter>
  deliveryChannelFilter;

  /// The name of the delivery channel.
  late final pulumi.Output<String> deliveryChannelName;

  /// The configurations for delivery of resource configuration change events. See `resource_change_delivery` below.
  late final pulumi.Output<DeliveryChannelResourceChangeDelivery?>
  resourceChangeDelivery;

  /// The configurations for delivery of scheduled resource snapshots. See `resource_snapshot_delivery` below.
  late final pulumi.Output<DeliveryChannelResourceSnapshotDelivery?>
  resourceSnapshotDelivery;

  /// Creates a new [DeliveryChannel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeliveryChannel]. {@macro pulumi_resourcemanager_delivery_channel_delivery_channel_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeliveryChannel(
    String name, {
    DeliveryChannelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:resourcemanager/deliveryChannel:DeliveryChannel',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    deliveryChannelDescription = registerOutput<String?>(
      'deliveryChannelDescription',
    );
    deliveryChannelFilter =
        registerOutput<DeliveryChannelDeliveryChannelFilter>(
          'deliveryChannelFilter',
        );
    deliveryChannelName = registerOutput<String>('deliveryChannelName');
    resourceChangeDelivery =
        registerOutput<DeliveryChannelResourceChangeDelivery?>(
          'resourceChangeDelivery',
        );
    resourceSnapshotDelivery =
        registerOutput<DeliveryChannelResourceSnapshotDelivery?>(
          'resourceSnapshotDelivery',
        );
  }

  /// Gets an existing [DeliveryChannel] resource's state with the given [name] and [id].
  static DeliveryChannel get(
    String name,
    pulumi.Input<String> id, {
    DeliveryChannelState? state,
  }) {
    return DeliveryChannel._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DeliveryChannel._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:resourcemanager/deliveryChannel:DeliveryChannel',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    deliveryChannelDescription = registerOutput<String?>(
      'deliveryChannelDescription',
    );
    deliveryChannelFilter =
        registerOutput<DeliveryChannelDeliveryChannelFilter>(
          'deliveryChannelFilter',
        );
    deliveryChannelName = registerOutput<String>('deliveryChannelName');
    resourceChangeDelivery =
        registerOutput<DeliveryChannelResourceChangeDelivery?>(
          'resourceChangeDelivery',
        );
    resourceSnapshotDelivery =
        registerOutput<DeliveryChannelResourceSnapshotDelivery?>(
          'resourceSnapshotDelivery',
        );
  }
}
