import 'package:pulumi/pulumi.dart' as pulumi;
import 'iot_connector_args.dart';
import 'iot_event_hub_ingestion_endpoint_configuration_response.dart';
import 'iot_mapping_properties_response.dart';
import 'service_managed_identity_response_identity.dart';
import 'system_data_response.dart';

/// IoT Connector definition.
///
/// Uses Azure REST API version 2024-03-31. In version 2.x of the Azure Native provider, it used API version 2023-02-28.
///
/// Other available API versions: 2022-10-01-preview, 2022-12-01, 2023-02-28, 2023-09-06, 2023-11-01, 2023-12-01, 2024-03-01, 2025-03-01-preview, 2025-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native healthcareapis [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create an IoT Connector
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var iotConnector = new AzureNative.HealthcareApis.IotConnector("iotConnector", new()
///     {
///         DeviceMapping = new AzureNative.HealthcareApis.Inputs.IotMappingPropertiesArgs
///         {
///             Content = new Dictionary<string, object?>
///             {
///                 ["template"] = new[]
///                 {
///                     new Dictionary<string, object?>
///                     {
///                         ["template"] = new Dictionary<string, object?>
///                         {
///                             ["deviceIdExpression"] = "$.deviceid",
///                             ["timestampExpression"] = "$.measurementdatetime",
///                             ["typeMatchExpression"] = "$..[?(@heartrate)]",
///                             ["typeName"] = "heartrate",
///                             ["values"] = new[]
///                             {
///                                 new Dictionary<string, object?>
///                                 {
///                                     ["required"] = "true",
///                                     ["valueExpression"] = "$.heartrate",
///                                     ["valueName"] = "hr",
///                                 },
///                             },
///                         },
///                         ["templateType"] = "JsonPathContent",
///                     },
///                 },
///                 ["templateType"] = "CollectionContent",
///             },
///         },
///         Identity = new AzureNative.HealthcareApis.Inputs.ServiceManagedIdentityIdentityArgs
///         {
///             Type = AzureNative.HealthcareApis.ServiceManagedIdentityType.SystemAssigned,
///         },
///         IngestionEndpointConfiguration = new AzureNative.HealthcareApis.Inputs.IotEventHubIngestionEndpointConfigurationArgs
///         {
///             ConsumerGroup = "ConsumerGroupA",
///             EventHubName = "MyEventHubName",
///             FullyQualifiedEventHubNamespace = "myeventhub.servicesbus.windows.net",
///         },
///         IotConnectorName = "blue",
///         Location = "westus",
///         ResourceGroupName = "testRG",
///         Tags =
///         {
///             { "additionalProp1", "string" },
///             { "additionalProp2", "string" },
///             { "additionalProp3", "string" },
///         },
///         WorkspaceName = "workspace1",
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
/// 	healthcareapis "github.com/pulumi/pulumi-azure-native-sdk/healthcareapis/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := healthcareapis.NewIotConnector(ctx, "iotConnector", &healthcareapis.IotConnectorArgs{
/// 			DeviceMapping: &healthcareapis.IotMappingPropertiesArgs{
/// 				Content: pulumi.Any(map[string]interface{}{
/// 					"template": []map[string]interface{}{
/// 						map[string]interface{}{
/// 							"template": map[string]interface{}{
/// 								"deviceIdExpression":  "$.deviceid",
/// 								"timestampExpression": "$.measurementdatetime",
/// 								"typeMatchExpression": "$..[?(@heartrate)]",
/// 								"typeName":            "heartrate",
/// 								"values": []map[string]interface{}{
/// 									map[string]interface{}{
/// 										"required":        "true",
/// 										"valueExpression": "$.heartrate",
/// 										"valueName":       "hr",
/// 									},
/// 								},
/// 							},
/// 							"templateType": "JsonPathContent",
/// 						},
/// 					},
/// 					"templateType": "CollectionContent",
/// 				}),
/// 			},
/// 			Identity: &healthcareapis.ServiceManagedIdentityIdentityArgs{
/// 				Type: pulumi.String(healthcareapis.ServiceManagedIdentityTypeSystemAssigned),
/// 			},
/// 			IngestionEndpointConfiguration: &healthcareapis.IotEventHubIngestionEndpointConfigurationArgs{
/// 				ConsumerGroup:                   pulumi.String("ConsumerGroupA"),
/// 				EventHubName:                    pulumi.String("MyEventHubName"),
/// 				FullyQualifiedEventHubNamespace: pulumi.String("myeventhub.servicesbus.windows.net"),
/// 			},
/// 			IotConnectorName:  pulumi.String("blue"),
/// 			Location:          pulumi.String("westus"),
/// 			ResourceGroupName: pulumi.String("testRG"),
/// 			Tags: pulumi.StringMap{
/// 				"additionalProp1": pulumi.String("string"),
/// 				"additionalProp2": pulumi.String("string"),
/// 				"additionalProp3": pulumi.String("string"),
/// 			},
/// 			WorkspaceName: pulumi.String("workspace1"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.healthcareapis.IotConnector;
/// import com.pulumi.azurenative.healthcareapis.IotConnectorArgs;
/// import com.pulumi.azurenative.healthcareapis.inputs.IotMappingPropertiesArgs;
/// import com.pulumi.azurenative.healthcareapis.inputs.ServiceManagedIdentityIdentityArgs;
/// import com.pulumi.azurenative.healthcareapis.inputs.IotEventHubIngestionEndpointConfigurationArgs;
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
///         var iotConnector = new IotConnector("iotConnector", IotConnectorArgs.builder()
///             .deviceMapping(IotMappingPropertiesArgs.builder()
///                 .content(Map.ofEntries(
///                     Map.entry("template", Map.ofEntries(
///                         Map.entry("template", Map.ofEntries(
///                             Map.entry("deviceIdExpression", "$.deviceid"),
///                             Map.entry("timestampExpression", "$.measurementdatetime"),
///                             Map.entry("typeMatchExpression", "$..[?(@heartrate)]"),
///                             Map.entry("typeName", "heartrate"),
///                             Map.entry("values", Map.ofEntries(
///                                 Map.entry("required", "true"),
///                                 Map.entry("valueExpression", "$.heartrate"),
///                                 Map.entry("valueName", "hr")
///                             ))
///                         )),
///                         Map.entry("templateType", "JsonPathContent")
///                     )),
///                     Map.entry("templateType", "CollectionContent")
///                 ))
///                 .build())
///             .identity(ServiceManagedIdentityIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .ingestionEndpointConfiguration(IotEventHubIngestionEndpointConfigurationArgs.builder()
///                 .consumerGroup("ConsumerGroupA")
///                 .eventHubName("MyEventHubName")
///                 .fullyQualifiedEventHubNamespace("myeventhub.servicesbus.windows.net")
///                 .build())
///             .iotConnectorName("blue")
///             .location("westus")
///             .resourceGroupName("testRG")
///             .tags(Map.ofEntries(
///                 Map.entry("additionalProp1", "string"),
///                 Map.entry("additionalProp2", "string"),
///                 Map.entry("additionalProp3", "string")
///             ))
///             .workspaceName("workspace1")
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
/// const iotConnector = new azure_native.healthcareapis.IotConnector("iotConnector", {
///     deviceMapping: {
///         content: {
///             template: [{
///                 template: {
///                     deviceIdExpression: "$.deviceid",
///                     timestampExpression: "$.measurementdatetime",
///                     typeMatchExpression: "$..[?(@heartrate)]",
///                     typeName: "heartrate",
///                     values: [{
///                         required: "true",
///                         valueExpression: "$.heartrate",
///                         valueName: "hr",
///                     }],
///                 },
///                 templateType: "JsonPathContent",
///             }],
///             templateType: "CollectionContent",
///         },
///     },
///     identity: {
///         type: azure_native.healthcareapis.ServiceManagedIdentityType.SystemAssigned,
///     },
///     ingestionEndpointConfiguration: {
///         consumerGroup: "ConsumerGroupA",
///         eventHubName: "MyEventHubName",
///         fullyQualifiedEventHubNamespace: "myeventhub.servicesbus.windows.net",
///     },
///     iotConnectorName: "blue",
///     location: "westus",
///     resourceGroupName: "testRG",
///     tags: {
///         additionalProp1: "string",
///         additionalProp2: "string",
///         additionalProp3: "string",
///     },
///     workspaceName: "workspace1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// iot_connector = azure_native.healthcareapis.IotConnector("iotConnector",
///     device_mapping={
///         "content": {
///             "template": [{
///                 "template": {
///                     "deviceIdExpression": "$.deviceid",
///                     "timestampExpression": "$.measurementdatetime",
///                     "typeMatchExpression": "$..[?(@heartrate)]",
///                     "typeName": "heartrate",
///                     "values": [{
///                         "required": "true",
///                         "valueExpression": "$.heartrate",
///                         "valueName": "hr",
///                     }],
///                 },
///                 "templateType": "JsonPathContent",
///             }],
///             "templateType": "CollectionContent",
///         },
///     },
///     identity={
///         "type": azure_native.healthcareapis.ServiceManagedIdentityType.SYSTEM_ASSIGNED,
///     },
///     ingestion_endpoint_configuration={
///         "consumer_group": "ConsumerGroupA",
///         "event_hub_name": "MyEventHubName",
///         "fully_qualified_event_hub_namespace": "myeventhub.servicesbus.windows.net",
///     },
///     iot_connector_name="blue",
///     location="westus",
///     resource_group_name="testRG",
///     tags={
///         "additionalProp1": "string",
///         "additionalProp2": "string",
///         "additionalProp3": "string",
///     },
///     workspace_name="workspace1")
///
/// ```
///
/// ```yaml
/// resources:
///   iotConnector:
///     type: azure-native:healthcareapis:IotConnector
///     properties:
///       deviceMapping:
///         content:
///           template:
///             - template:
///                 deviceIdExpression: $.deviceid
///                 timestampExpression: $.measurementdatetime
///                 typeMatchExpression: $..[?(@heartrate)]
///                 typeName: heartrate
///                 values:
///                   - required: 'true'
///                     valueExpression: $.heartrate
///                     valueName: hr
///               templateType: JsonPathContent
///           templateType: CollectionContent
///       identity:
///         type: SystemAssigned
///       ingestionEndpointConfiguration:
///         consumerGroup: ConsumerGroupA
///         eventHubName: MyEventHubName
///         fullyQualifiedEventHubNamespace: myeventhub.servicesbus.windows.net
///       iotConnectorName: blue
///       location: westus
///       resourceGroupName: testRG
///       tags:
///         additionalProp1: string
///         additionalProp2: string
///         additionalProp3: string
///       workspaceName: workspace1
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
/// $ pulumi import azure-native:healthcareapis:IotConnector blue /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HealthcareApis/workspaces/{workspaceName}/iotconnectors/{iotConnectorName}
/// ```
class IotConnector extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Device Mappings.
  late final pulumi.Output<IotMappingPropertiesResponse?> deviceMapping;
  /// An etag associated with the resource, used for optimistic concurrency when editing it.
  late final pulumi.Output<String?> etag;
  /// Setting indicating whether the service has a managed identity associated with it.
  late final pulumi.Output<ServiceManagedIdentityResponseIdentity?> identity;
  /// Source configuration.
  late final pulumi.Output<IotEventHubIngestionEndpointConfigurationResponse?> ingestionEndpointConfiguration;
  /// The resource location.
  late final pulumi.Output<String?> location;
  /// The resource name.
  late final pulumi.Output<String> name;
  /// The provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [IotConnector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IotConnector]. {@macro pulumi_healthcareapis_iot_connector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IotConnector(
    String name, {
    IotConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:healthcareapis:IotConnector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    deviceMapping = registerOutput<IotMappingPropertiesResponse?>('deviceMapping', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IotMappingPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String?>('etag');
    identity = registerOutput<ServiceManagedIdentityResponseIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceManagedIdentityResponseIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ingestionEndpointConfiguration = registerOutput<IotEventHubIngestionEndpointConfigurationResponse?>('ingestionEndpointConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IotEventHubIngestionEndpointConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
