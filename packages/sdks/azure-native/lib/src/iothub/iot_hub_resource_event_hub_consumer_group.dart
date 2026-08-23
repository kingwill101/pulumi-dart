import 'package:pulumi/pulumi.dart' as pulumi;
import 'iot_hub_resource_event_hub_consumer_group_args.dart';

/// The properties of the EventHubConsumerGroupInfo object.
///
/// Uses Azure REST API version 2023-06-30.
///
/// Other available API versions: 2016-02-03, 2017-01-19, 2017-07-01, 2018-01-22, 2018-04-01, 2018-12-01-preview, 2019-03-22, 2019-03-22-preview, 2019-07-01-preview, 2019-11-04, 2020-03-01, 2020-04-01, 2020-06-15, 2020-07-10-preview, 2020-08-01, 2020-08-31, 2020-08-31-preview, 2021-02-01-preview, 2021-03-03-preview, 2021-03-31, 2021-07-01, 2021-07-01-preview, 2021-07-02, 2021-07-02-preview, 2022-04-30-preview, 2022-11-15-preview, 2023-06-30-preview, 2025-08-01-preview, 2026-03-01-preview, 2026-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native iothub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### IotHubResource_CreateEventHubConsumerGroup
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var iotHubResourceEventHubConsumerGroup = new AzureNative.IoTHub.IotHubResourceEventHubConsumerGroup("iotHubResourceEventHubConsumerGroup", new()
///     {
///         EventHubEndpointName = "events",
///         Name = "test",
///         Properties = new AzureNative.IoTHub.Inputs.EventHubConsumerGroupNameArgs
///         {
///             Name = "test",
///         },
///         ResourceGroupName = "myResourceGroup",
///         ResourceName = "testHub",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	iothub "github.com/pulumi/pulumi-azure-native-sdk/iothub/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iothub.NewIotHubResourceEventHubConsumerGroup(ctx, "iotHubResourceEventHubConsumerGroup", &iothub.IotHubResourceEventHubConsumerGroupArgs{
/// 			EventHubEndpointName: pulumi.String("events"),
/// 			Name:                 pulumi.String("test"),
/// 			Properties: &iothub.EventHubConsumerGroupNameArgs{
/// 				Name: pulumi.String("test"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			ResourceName:      pulumi.String("testHub"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_iothub_iothubresourceeventhubconsumergroup" "iotHubResourceEventHubConsumerGroup" {
///   event_hub_endpoint_name = "events"
///   name                    = "test"
///   properties = {
///     name = "test"
///   }
///   resource_group_name = "myResourceGroup"
///   resource_name       = "testHub"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.iothub.IotHubResourceEventHubConsumerGroup;
/// import com.pulumi.azurenative.iothub.IotHubResourceEventHubConsumerGroupArgs;
/// import com.pulumi.azurenative.iothub.inputs.EventHubConsumerGroupNameArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var iotHubResourceEventHubConsumerGroup = new IotHubResourceEventHubConsumerGroup("iotHubResourceEventHubConsumerGroup", IotHubResourceEventHubConsumerGroupArgs.builder()
///             .eventHubEndpointName("events")
///             .name("test")
///             .properties(EventHubConsumerGroupNameArgs.builder()
///                 .name("test")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .resourceName("testHub")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const iotHubResourceEventHubConsumerGroup = new azure_native.iothub.IotHubResourceEventHubConsumerGroup("iotHubResourceEventHubConsumerGroup", {
///     eventHubEndpointName: "events",
///     name: "test",
///     properties: {
///         name: "test",
///     },
///     resourceGroupName: "myResourceGroup",
///     resourceName: "testHub",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// iot_hub_resource_event_hub_consumer_group = azure_native.iothub.IotHubResourceEventHubConsumerGroup("iotHubResourceEventHubConsumerGroup",
///     event_hub_endpoint_name="events",
///     name="test",
///     properties={
///         "name": "test",
///     },
///     resource_group_name="myResourceGroup",
///     resource_name_="testHub")
///
/// ```
///
/// ```yaml
/// resources:
///   iotHubResourceEventHubConsumerGroup:
///     type: azure-native:iothub:IotHubResourceEventHubConsumerGroup
///     properties:
///       eventHubEndpointName: events
///       name: test
///       properties:
///         name: test
///       resourceGroupName: myResourceGroup
///       resourceName: testHub
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:iothub:IotHubResourceEventHubConsumerGroup test /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Devices/IotHubs/{resourceName}/eventHubEndpoints/{eventHubEndpointName}/ConsumerGroups/{name}
/// ```
class IotHubResourceEventHubConsumerGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The etag.
  late final pulumi.Output<String> etag;
  /// The Event Hub-compatible consumer group name.
  late final pulumi.Output<String> name;
  /// The tags.
  late final pulumi.Output<dynamic> properties;
  /// the resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [IotHubResourceEventHubConsumerGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IotHubResourceEventHubConsumerGroup]. {@macro pulumi_iothub_iot_hub_resource_event_hub_consumer_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IotHubResourceEventHubConsumerGroup(
    String name, {
    IotHubResourceEventHubConsumerGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:iothub:IotHubResourceEventHubConsumerGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<dynamic>('properties');
    type = registerOutput<String>('type');
  }
}
