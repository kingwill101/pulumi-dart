import 'package:pulumi/pulumi.dart' as pulumi;
import 'iot_connector_fhir_destination_args.dart';
import 'iot_mapping_properties_response.dart';
import 'system_data_response.dart';

/// IoT Connector FHIR destination definition.
///
/// Uses Azure REST API version 2024-03-31. In version 2.x of the Azure Native provider, it used API version 2023-02-28.
///
/// Other available API versions: 2022-10-01-preview, 2022-12-01, 2023-02-28, 2023-09-06, 2023-11-01, 2023-12-01, 2024-03-01, 2025-03-01-preview, 2025-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native healthcareapis [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update an Iot Connector FHIR destination
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var iotConnectorFhirDestination = new AzureNative.HealthcareApis.IotConnectorFhirDestination("iotConnectorFhirDestination", new()
///     {
///         FhirDestinationName = "dest1",
///         FhirMapping = new AzureNative.HealthcareApis.Inputs.IotMappingPropertiesArgs
///         {
///             Content = new Dictionary<string, object?>
///             {
///                 ["template"] = new[]
///                 {
///                     new Dictionary<string, object?>
///                     {
///                         ["template"] = new Dictionary<string, object?>
///                         {
///                             ["codes"] = new[]
///                             {
///                                 new Dictionary<string, object?>
///                                 {
///                                     ["code"] = "8867-4",
///                                     ["display"] = "Heart rate",
///                                     ["system"] = "http://loinc.org",
///                                 },
///                             },
///                             ["periodInterval"] = 60,
///                             ["typeName"] = "heartrate",
///                             ["value"] = new Dictionary<string, object?>
///                             {
///                                 ["defaultPeriod"] = 5000,
///                                 ["unit"] = "count/min",
///                                 ["valueName"] = "hr",
///                                 ["valueType"] = "SampledData",
///                             },
///                         },
///                         ["templateType"] = "CodeValueFhir",
///                     },
///                 },
///                 ["templateType"] = "CollectionFhirTemplate",
///             },
///         },
///         FhirServiceResourceId = "subscriptions/11111111-2222-3333-4444-555566667777/resourceGroups/myrg/providers/Microsoft.HealthcareApis/workspaces/myworkspace/fhirservices/myfhirservice",
///         IotConnectorName = "blue",
///         Location = "westus",
///         ResourceGroupName = "testRG",
///         ResourceIdentityResolutionType = AzureNative.HealthcareApis.IotIdentityResolutionType.Create,
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
/// 		_, err := healthcareapis.NewIotConnectorFhirDestination(ctx, "iotConnectorFhirDestination", &healthcareapis.IotConnectorFhirDestinationArgs{
/// 			FhirDestinationName: pulumi.String("dest1"),
/// 			FhirMapping: &healthcareapis.IotMappingPropertiesArgs{
/// 				Content: pulumi.Any(map[string]interface{}{
/// 					"template": []map[string]interface{}{
/// 						map[string]interface{}{
/// 							"template": map[string]interface{}{
/// 								"codes": []map[string]interface{}{
/// 									map[string]interface{}{
/// 										"code":    "8867-4",
/// 										"display": "Heart rate",
/// 										"system":  "http://loinc.org",
/// 									},
/// 								},
/// 								"periodInterval": 60,
/// 								"typeName":       "heartrate",
/// 								"value": map[string]interface{}{
/// 									"defaultPeriod": 5000,
/// 									"unit":          "count/min",
/// 									"valueName":     "hr",
/// 									"valueType":     "SampledData",
/// 								},
/// 							},
/// 							"templateType": "CodeValueFhir",
/// 						},
/// 					},
/// 					"templateType": "CollectionFhirTemplate",
/// 				}),
/// 			},
/// 			FhirServiceResourceId:          pulumi.String("subscriptions/11111111-2222-3333-4444-555566667777/resourceGroups/myrg/providers/Microsoft.HealthcareApis/workspaces/myworkspace/fhirservices/myfhirservice"),
/// 			IotConnectorName:               pulumi.String("blue"),
/// 			Location:                       pulumi.String("westus"),
/// 			ResourceGroupName:              pulumi.String("testRG"),
/// 			ResourceIdentityResolutionType: pulumi.String(healthcareapis.IotIdentityResolutionTypeCreate),
/// 			WorkspaceName:                  pulumi.String("workspace1"),
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
/// resource "azure-native_healthcareapis_iotconnectorfhirdestination" "iotConnectorFhirDestination" {
///   fhir_destination_name = "dest1"
///   fhir_mapping = {
///     content = {
///       "template" = [{
///         "template" = {
///           "codes" = [{
///             "code"    = "8867-4"
///             "display" = "Heart rate"
///             "system"  = "http://loinc.org"
///           }]
///           "periodInterval" = 60
///           "typeName"       = "heartrate"
///           "value" = {
///             "defaultPeriod" = 5000
///             "unit"          = "count/min"
///             "valueName"     = "hr"
///             "valueType"     = "SampledData"
///           }
///         }
///         "templateType" = "CodeValueFhir"
///       }]
///       "templateType" = "CollectionFhirTemplate"
///     }
///   }
///   fhir_service_resource_id          = "subscriptions/11111111-2222-3333-4444-555566667777/resourceGroups/myrg/providers/Microsoft.HealthcareApis/workspaces/myworkspace/fhirservices/myfhirservice"
///   iot_connector_name                = "blue"
///   location                          = "westus"
///   resource_group_name               = "testRG"
///   resource_identity_resolution_type = "Create"
///   workspace_name                    = "workspace1"
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
/// import com.pulumi.azurenative.healthcareapis.IotConnectorFhirDestination;
/// import com.pulumi.azurenative.healthcareapis.IotConnectorFhirDestinationArgs;
/// import com.pulumi.azurenative.healthcareapis.inputs.IotMappingPropertiesArgs;
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
///         var iotConnectorFhirDestination = new IotConnectorFhirDestination("iotConnectorFhirDestination", IotConnectorFhirDestinationArgs.builder()
///             .fhirDestinationName("dest1")
///             .fhirMapping(IotMappingPropertiesArgs.builder()
///                 .content(Map.ofEntries(
///                     Map.entry("template", Arrays.asList(Map.ofEntries(
///                         Map.entry("template", Map.ofEntries(
///                             Map.entry("codes", Arrays.asList(Map.ofEntries(
///                                 Map.entry("code", "8867-4"),
///                                 Map.entry("display", "Heart rate"),
///                                 Map.entry("system", "http://loinc.org")
///                             ))),
///                             Map.entry("periodInterval", 60),
///                             Map.entry("typeName", "heartrate"),
///                             Map.entry("value", Map.ofEntries(
///                                 Map.entry("defaultPeriod", 5000),
///                                 Map.entry("unit", "count/min"),
///                                 Map.entry("valueName", "hr"),
///                                 Map.entry("valueType", "SampledData")
///                             ))
///                         )),
///                         Map.entry("templateType", "CodeValueFhir")
///                     ))),
///                     Map.entry("templateType", "CollectionFhirTemplate")
///                 ))
///                 .build())
///             .fhirServiceResourceId("subscriptions/11111111-2222-3333-4444-555566667777/resourceGroups/myrg/providers/Microsoft.HealthcareApis/workspaces/myworkspace/fhirservices/myfhirservice")
///             .iotConnectorName("blue")
///             .location("westus")
///             .resourceGroupName("testRG")
///             .resourceIdentityResolutionType("Create")
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
/// const iotConnectorFhirDestination = new azure_native.healthcareapis.IotConnectorFhirDestination("iotConnectorFhirDestination", {
///     fhirDestinationName: "dest1",
///     fhirMapping: {
///         content: {
///             template: [{
///                 template: {
///                     codes: [{
///                         code: "8867-4",
///                         display: "Heart rate",
///                         system: "http://loinc.org",
///                     }],
///                     periodInterval: 60,
///                     typeName: "heartrate",
///                     value: {
///                         defaultPeriod: 5000,
///                         unit: "count/min",
///                         valueName: "hr",
///                         valueType: "SampledData",
///                     },
///                 },
///                 templateType: "CodeValueFhir",
///             }],
///             templateType: "CollectionFhirTemplate",
///         },
///     },
///     fhirServiceResourceId: "subscriptions/11111111-2222-3333-4444-555566667777/resourceGroups/myrg/providers/Microsoft.HealthcareApis/workspaces/myworkspace/fhirservices/myfhirservice",
///     iotConnectorName: "blue",
///     location: "westus",
///     resourceGroupName: "testRG",
///     resourceIdentityResolutionType: azure_native.healthcareapis.IotIdentityResolutionType.Create,
///     workspaceName: "workspace1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// iot_connector_fhir_destination = azure_native.healthcareapis.IotConnectorFhirDestination("iotConnectorFhirDestination",
///     fhir_destination_name="dest1",
///     fhir_mapping={
///         "content": {
///             "template": [{
///                 "template": {
///                     "codes": [{
///                         "code": "8867-4",
///                         "display": "Heart rate",
///                         "system": "http://loinc.org",
///                     }],
///                     "periodInterval": 60,
///                     "typeName": "heartrate",
///                     "value": {
///                         "defaultPeriod": 5000,
///                         "unit": "count/min",
///                         "valueName": "hr",
///                         "valueType": "SampledData",
///                     },
///                 },
///                 "templateType": "CodeValueFhir",
///             }],
///             "templateType": "CollectionFhirTemplate",
///         },
///     },
///     fhir_service_resource_id="subscriptions/11111111-2222-3333-4444-555566667777/resourceGroups/myrg/providers/Microsoft.HealthcareApis/workspaces/myworkspace/fhirservices/myfhirservice",
///     iot_connector_name="blue",
///     location="westus",
///     resource_group_name="testRG",
///     resource_identity_resolution_type=azure_native.healthcareapis.IotIdentityResolutionType.CREATE,
///     workspace_name="workspace1")
///
/// ```
///
/// ```yaml
/// resources:
///   iotConnectorFhirDestination:
///     type: azure-native:healthcareapis:IotConnectorFhirDestination
///     properties:
///       fhirDestinationName: dest1
///       fhirMapping:
///         content:
///           template:
///             - template:
///                 codes:
///                   - code: 8867-4
///                     display: Heart rate
///                     system: http://loinc.org
///                 periodInterval: 60
///                 typeName: heartrate
///                 value:
///                   defaultPeriod: 5000
///                   unit: count/min
///                   valueName: hr
///                   valueType: SampledData
///               templateType: CodeValueFhir
///           templateType: CollectionFhirTemplate
///       fhirServiceResourceId: subscriptions/11111111-2222-3333-4444-555566667777/resourceGroups/myrg/providers/Microsoft.HealthcareApis/workspaces/myworkspace/fhirservices/myfhirservice
///       iotConnectorName: blue
///       location: westus
///       resourceGroupName: testRG
///       resourceIdentityResolutionType: Create
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
/// $ pulumi import azure-native:healthcareapis:IotConnectorFhirDestination dest1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HealthcareApis/workspaces/{workspaceName}/iotconnectors/{iotConnectorName}/fhirdestinations/{fhirDestinationName}
/// ```
class IotConnectorFhirDestination extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// An etag associated with the resource, used for optimistic concurrency when editing it.
  late final pulumi.Output<String?> etag;
  /// FHIR Mappings
  late final pulumi.Output<IotMappingPropertiesResponse> fhirMapping;
  /// Fully qualified resource id of the FHIR service to connect to.
  late final pulumi.Output<String> fhirServiceResourceId;
  /// The resource location.
  late final pulumi.Output<String?> location;
  /// The resource name.
  late final pulumi.Output<String> name;
  /// Determines how resource identity is resolved on the destination.
  late final pulumi.Output<String> resourceIdentityResolutionType;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [IotConnectorFhirDestination].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IotConnectorFhirDestination]. {@macro pulumi_healthcareapis_iot_connector_fhir_destination_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IotConnectorFhirDestination(
    String name, {
    IotConnectorFhirDestinationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:healthcareapis:IotConnectorFhirDestination',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String?>('etag');
    fhirMapping = registerOutput<IotMappingPropertiesResponse>('fhirMapping', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IotMappingPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    fhirServiceResourceId = registerOutput<String>('fhirServiceResourceId');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    resourceIdentityResolutionType = registerOutput<String>('resourceIdentityResolutionType');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
