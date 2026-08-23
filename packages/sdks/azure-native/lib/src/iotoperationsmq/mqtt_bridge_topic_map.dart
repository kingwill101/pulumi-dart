import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_property_response.dart';
import 'mqtt_bridge_topic_map_args.dart';
import 'system_data_response.dart';

/// MQ mqttBridgeTopicMap resource
///
/// Uses Azure REST API version 2023-10-04-preview. In version 2.x of the Azure Native provider, it used API version 2023-10-04-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### MqttBridgeTopicMap_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mqttBridgeTopicMap = new AzureNative.IoTOperationsMQ.MqttBridgeTopicMap("mqttBridgeTopicMap", new()
///     {
///         ExtendedLocation = new AzureNative.IoTOperationsMQ.Inputs.ExtendedLocationPropertyArgs
///         {
///             Name = "an",
///             Type = AzureNative.IoTOperationsMQ.ExtendedLocationType.CustomLocation,
///         },
///         Location = "icfdftifk",
///         MqName = "52A1-D1-t--Q7O9-C-2S",
///         MqttBridgeConnectorName = "5sKfh6461-KDI8h-5",
///         MqttBridgeConnectorRef = "aemmhvfdzmdtxwgimpaqephgo",
///         ResourceGroupName = "rgiotoperationsmq",
///         Routes = new[]
///         {
///             new AzureNative.IoTOperationsMQ.Inputs.MqttBridgeRoutesArgs
///             {
///                 Direction = AzureNative.IoTOperationsMQ.MqttBridgeRouteDirection.RemoteToLocal,
///                 Name = "u",
///                 Qos = 2,
///                 SharedSubscription = new AzureNative.IoTOperationsMQ.Inputs.MqttBridgeRouteSharedSubscriptionArgs
///                 {
///                     GroupMinimumShareNumber = 129,
///                     GroupName = "exnfgkdccpuvzqhxrg",
///                 },
///                 Source = "xwnfgkkfezlgh",
///                 Target = "mgwem",
///             },
///         },
///         Tags = null,
///         TopicMapName = "5--CR4S47--UaxB4-",
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
/// 	iotoperationsmq "github.com/pulumi/pulumi-azure-native-sdk/iotoperationsmq/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iotoperationsmq.NewMqttBridgeTopicMap(ctx, "mqttBridgeTopicMap", &iotoperationsmq.MqttBridgeTopicMapArgs{
/// 			ExtendedLocation: &iotoperationsmq.ExtendedLocationPropertyArgs{
/// 				Name: pulumi.String("an"),
/// 				Type: pulumi.String(iotoperationsmq.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			Location:                pulumi.String("icfdftifk"),
/// 			MqName:                  pulumi.String("52A1-D1-t--Q7O9-C-2S"),
/// 			MqttBridgeConnectorName: pulumi.String("5sKfh6461-KDI8h-5"),
/// 			MqttBridgeConnectorRef:  pulumi.String("aemmhvfdzmdtxwgimpaqephgo"),
/// 			ResourceGroupName:       pulumi.String("rgiotoperationsmq"),
/// 			Routes: iotoperationsmq.MqttBridgeRoutesArray{
/// 				&iotoperationsmq.MqttBridgeRoutesArgs{
/// 					Direction: pulumi.String(iotoperationsmq.MqttBridgeRouteDirectionRemoteToLocal),
/// 					Name:      pulumi.String("u"),
/// 					Qos:       pulumi.Int(2),
/// 					SharedSubscription: &iotoperationsmq.MqttBridgeRouteSharedSubscriptionArgs{
/// 						GroupMinimumShareNumber: pulumi.Int(129),
/// 						GroupName:               pulumi.String("exnfgkdccpuvzqhxrg"),
/// 					},
/// 					Source: pulumi.String("xwnfgkkfezlgh"),
/// 					Target: pulumi.String("mgwem"),
/// 				},
/// 			},
/// 			Tags:         pulumi.StringMap{},
/// 			TopicMapName: pulumi.String("5--CR4S47--UaxB4-"),
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
/// resource "azure-native_iotoperationsmq_mqttbridgetopicmap" "mqttBridgeTopicMap" {
///   extended_location = {
///     name = "an"
///     type = "CustomLocation"
///   }
///   location                   = "icfdftifk"
///   mq_name                    = "52A1-D1-t--Q7O9-C-2S"
///   mqtt_bridge_connector_name = "5sKfh6461-KDI8h-5"
///   mqtt_bridge_connector_ref  = "aemmhvfdzmdtxwgimpaqephgo"
///   resource_group_name        = "rgiotoperationsmq"
///   routes {
///     direction = "remote-to-local"
///     name      = "u"
///     qos       = 2
///     shared_subscription = {
///       group_minimum_share_number = 129
///       group_name                 = "exnfgkdccpuvzqhxrg"
///     }
///     source = "xwnfgkkfezlgh"
///     target = "mgwem"
///   }
///   tags           = {}
///   topic_map_name = "5--CR4S47--UaxB4-"
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
/// import com.pulumi.azurenative.iotoperationsmq.MqttBridgeTopicMap;
/// import com.pulumi.azurenative.iotoperationsmq.MqttBridgeTopicMapArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.ExtendedLocationPropertyArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.MqttBridgeRoutesArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.MqttBridgeRouteSharedSubscriptionArgs;
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
///         var mqttBridgeTopicMap = new MqttBridgeTopicMap("mqttBridgeTopicMap", MqttBridgeTopicMapArgs.builder()
///             .extendedLocation(ExtendedLocationPropertyArgs.builder()
///                 .name("an")
///                 .type("CustomLocation")
///                 .build())
///             .location("icfdftifk")
///             .mqName("52A1-D1-t--Q7O9-C-2S")
///             .mqttBridgeConnectorName("5sKfh6461-KDI8h-5")
///             .mqttBridgeConnectorRef("aemmhvfdzmdtxwgimpaqephgo")
///             .resourceGroupName("rgiotoperationsmq")
///             .routes(MqttBridgeRoutesArgs.builder()
///                 .direction("remote-to-local")
///                 .name("u")
///                 .qos(2)
///                 .sharedSubscription(MqttBridgeRouteSharedSubscriptionArgs.builder()
///                     .groupMinimumShareNumber(129)
///                     .groupName("exnfgkdccpuvzqhxrg")
///                     .build())
///                 .source("xwnfgkkfezlgh")
///                 .target("mgwem")
///                 .build())
///             .tags(Map.ofEntries(
///             ))
///             .topicMapName("5--CR4S47--UaxB4-")
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
/// const mqttBridgeTopicMap = new azure_native.iotoperationsmq.MqttBridgeTopicMap("mqttBridgeTopicMap", {
///     extendedLocation: {
///         name: "an",
///         type: azure_native.iotoperationsmq.ExtendedLocationType.CustomLocation,
///     },
///     location: "icfdftifk",
///     mqName: "52A1-D1-t--Q7O9-C-2S",
///     mqttBridgeConnectorName: "5sKfh6461-KDI8h-5",
///     mqttBridgeConnectorRef: "aemmhvfdzmdtxwgimpaqephgo",
///     resourceGroupName: "rgiotoperationsmq",
///     routes: [{
///         direction: azure_native.iotoperationsmq.MqttBridgeRouteDirection.RemoteToLocal,
///         name: "u",
///         qos: 2,
///         sharedSubscription: {
///             groupMinimumShareNumber: 129,
///             groupName: "exnfgkdccpuvzqhxrg",
///         },
///         source: "xwnfgkkfezlgh",
///         target: "mgwem",
///     }],
///     tags: {},
///     topicMapName: "5--CR4S47--UaxB4-",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// mqtt_bridge_topic_map = azure_native.iotoperationsmq.MqttBridgeTopicMap("mqttBridgeTopicMap",
///     extended_location={
///         "name": "an",
///         "type": azure_native.iotoperationsmq.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     location="icfdftifk",
///     mq_name="52A1-D1-t--Q7O9-C-2S",
///     mqtt_bridge_connector_name="5sKfh6461-KDI8h-5",
///     mqtt_bridge_connector_ref="aemmhvfdzmdtxwgimpaqephgo",
///     resource_group_name="rgiotoperationsmq",
///     routes=[{
///         "direction": azure_native.iotoperationsmq.MqttBridgeRouteDirection.REMOTE_TO_LOCAL,
///         "name": "u",
///         "qos": 2,
///         "shared_subscription": {
///             "group_minimum_share_number": 129,
///             "group_name": "exnfgkdccpuvzqhxrg",
///         },
///         "source": "xwnfgkkfezlgh",
///         "target": "mgwem",
///     }],
///     tags={},
///     topic_map_name="5--CR4S47--UaxB4-")
///
/// ```
///
/// ```yaml
/// resources:
///   mqttBridgeTopicMap:
///     type: azure-native:iotoperationsmq:MqttBridgeTopicMap
///     properties:
///       extendedLocation:
///         name: an
///         type: CustomLocation
///       location: icfdftifk
///       mqName: 52A1-D1-t--Q7O9-C-2S
///       mqttBridgeConnectorName: 5sKfh6461-KDI8h-5
///       mqttBridgeConnectorRef: aemmhvfdzmdtxwgimpaqephgo
///       resourceGroupName: rgiotoperationsmq
///       routes:
///         - direction: remote-to-local
///           name: u
///           qos: 2
///           sharedSubscription:
///             groupMinimumShareNumber: 129
///             groupName: exnfgkdccpuvzqhxrg
///           source: xwnfgkkfezlgh
///           target: mgwem
///       tags: {}
///       topicMapName: 5--CR4S47--UaxB4-
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
/// $ pulumi import azure-native:iotoperationsmq:MqttBridgeTopicMap vfnttiyszrcrtvwzqwfgeasgwtil /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.IoTOperationsMQ/mq/{mqName}/mqttBridgeConnector/{mqttBridgeConnectorName}/topicMap/{topicMapName}
/// ```
class MqttBridgeTopicMap extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Extended Location
  late final pulumi.Output<ExtendedLocationPropertyResponse> extendedLocation;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The MqttBridgeConnector CRD it refers to.
  late final pulumi.Output<String> mqttBridgeConnectorRef;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The status of the last operation.
  late final pulumi.Output<String> provisioningState;
  /// The route details for MqttBridge connector.
  late final pulumi.Output<List<Map<String, dynamic>>?> routes;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [MqttBridgeTopicMap].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MqttBridgeTopicMap]. {@macro pulumi_iotoperationsmq_mqtt_bridge_topic_map_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MqttBridgeTopicMap(
    String name, {
    MqttBridgeTopicMapArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:iotoperationsmq:MqttBridgeTopicMap',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedLocation = registerOutput<ExtendedLocationPropertyResponse>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationPropertyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    mqttBridgeConnectorRef = registerOutput<String>('mqttBridgeConnectorRef');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    routes = registerOutput<List<Map<String, dynamic>>?>('routes');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
