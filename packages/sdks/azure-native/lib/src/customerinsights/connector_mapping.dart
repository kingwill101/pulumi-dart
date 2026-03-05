import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_mapping_args.dart';
import 'connector_mapping_properties_response.dart';

/// The connector mapping resource format.
///
/// Uses Azure REST API version 2017-04-26. In version 2.x of the Azure Native provider, it used API version 2017-04-26.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ConnectorMappings_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connectorMapping = new AzureNative.CustomerInsights.ConnectorMapping("connectorMapping", new()
///     {
///         ConnectorName = "testConnector8858",
///         Description = "Test mapping",
///         DisplayName = "testMapping12491",
///         EntityType = AzureNative.CustomerInsights.EntityTypes.Interaction,
///         EntityTypeName = "TestInteractionType2967",
///         HubName = "sdkTestHub",
///         MappingName = "testMapping12491",
///         MappingProperties = new AzureNative.CustomerInsights.Inputs.ConnectorMappingPropertiesArgs
///         {
///             Availability = new AzureNative.CustomerInsights.Inputs.ConnectorMappingAvailabilityArgs
///             {
///                 Frequency = AzureNative.CustomerInsights.FrequencyTypes.Hour,
///                 Interval = 5,
///             },
///             CompleteOperation = new AzureNative.CustomerInsights.Inputs.ConnectorMappingCompleteOperationArgs
///             {
///                 CompletionOperationType = AzureNative.CustomerInsights.CompletionOperationTypes.DeleteFile,
///                 DestinationFolder = "fakePath",
///             },
///             ErrorManagement = new AzureNative.CustomerInsights.Inputs.ConnectorMappingErrorManagementArgs
///             {
///                 ErrorLimit = 10,
///                 ErrorManagementType = AzureNative.CustomerInsights.ErrorManagementTypes.StopImport,
///             },
///             FileFilter = "unknown",
///             FolderPath = "http://sample.dne/file",
///             Format = new AzureNative.CustomerInsights.Inputs.ConnectorMappingFormatArgs
///             {
///                 ColumnDelimiter = "|",
///                 FormatType = AzureNative.CustomerInsights.FormatTypes.TextFormat,
///             },
///             HasHeader = false,
///             Structure = new[]
///             {
///                 new AzureNative.CustomerInsights.Inputs.ConnectorMappingStructureArgs
///                 {
///                     ColumnName = "unknown1",
///                     IsEncrypted = false,
///                     PropertyName = "unknwon1",
///                 },
///                 new AzureNative.CustomerInsights.Inputs.ConnectorMappingStructureArgs
///                 {
///                     ColumnName = "unknown2",
///                     IsEncrypted = true,
///                     PropertyName = "unknwon2",
///                 },
///             },
///         },
///         ResourceGroupName = "TestHubRG",
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
/// 	customerinsights "github.com/pulumi/pulumi-azure-native-sdk/customerinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := customerinsights.NewConnectorMapping(ctx, "connectorMapping", &customerinsights.ConnectorMappingArgs{
/// 			ConnectorName:  pulumi.String("testConnector8858"),
/// 			Description:    pulumi.String("Test mapping"),
/// 			DisplayName:    pulumi.String("testMapping12491"),
/// 			EntityType:     customerinsights.EntityTypesInteraction,
/// 			EntityTypeName: pulumi.String("TestInteractionType2967"),
/// 			HubName:        pulumi.String("sdkTestHub"),
/// 			MappingName:    pulumi.String("testMapping12491"),
/// 			MappingProperties: &customerinsights.ConnectorMappingPropertiesArgs{
/// 				Availability: &customerinsights.ConnectorMappingAvailabilityArgs{
/// 					Frequency: customerinsights.FrequencyTypesHour,
/// 					Interval:  pulumi.Int(5),
/// 				},
/// 				CompleteOperation: &customerinsights.ConnectorMappingCompleteOperationArgs{
/// 					CompletionOperationType: customerinsights.CompletionOperationTypesDeleteFile,
/// 					DestinationFolder:       pulumi.String("fakePath"),
/// 				},
/// 				ErrorManagement: &customerinsights.ConnectorMappingErrorManagementArgs{
/// 					ErrorLimit:          pulumi.Int(10),
/// 					ErrorManagementType: customerinsights.ErrorManagementTypesStopImport,
/// 				},
/// 				FileFilter: pulumi.String("unknown"),
/// 				FolderPath: pulumi.String("http://sample.dne/file"),
/// 				Format: &customerinsights.ConnectorMappingFormatArgs{
/// 					ColumnDelimiter: pulumi.String("|"),
/// 					FormatType:      customerinsights.FormatTypesTextFormat,
/// 				},
/// 				HasHeader: pulumi.Bool(false),
/// 				Structure: customerinsights.ConnectorMappingStructureArray{
/// 					&customerinsights.ConnectorMappingStructureArgs{
/// 						ColumnName:   pulumi.String("unknown1"),
/// 						IsEncrypted:  pulumi.Bool(false),
/// 						PropertyName: pulumi.String("unknwon1"),
/// 					},
/// 					&customerinsights.ConnectorMappingStructureArgs{
/// 						ColumnName:   pulumi.String("unknown2"),
/// 						IsEncrypted:  pulumi.Bool(true),
/// 						PropertyName: pulumi.String("unknwon2"),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("TestHubRG"),
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
/// import com.pulumi.azurenative.customerinsights.ConnectorMapping;
/// import com.pulumi.azurenative.customerinsights.ConnectorMappingArgs;
/// import com.pulumi.azurenative.customerinsights.inputs.ConnectorMappingPropertiesArgs;
/// import com.pulumi.azurenative.customerinsights.inputs.ConnectorMappingAvailabilityArgs;
/// import com.pulumi.azurenative.customerinsights.inputs.ConnectorMappingCompleteOperationArgs;
/// import com.pulumi.azurenative.customerinsights.inputs.ConnectorMappingErrorManagementArgs;
/// import com.pulumi.azurenative.customerinsights.inputs.ConnectorMappingFormatArgs;
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
///         var connectorMapping = new ConnectorMapping("connectorMapping", ConnectorMappingArgs.builder()
///             .connectorName("testConnector8858")
///             .description("Test mapping")
///             .displayName("testMapping12491")
///             .entityType("Interaction")
///             .entityTypeName("TestInteractionType2967")
///             .hubName("sdkTestHub")
///             .mappingName("testMapping12491")
///             .mappingProperties(ConnectorMappingPropertiesArgs.builder()
///                 .availability(ConnectorMappingAvailabilityArgs.builder()
///                     .frequency("Hour")
///                     .interval(5)
///                     .build())
///                 .completeOperation(ConnectorMappingCompleteOperationArgs.builder()
///                     .completionOperationType("DeleteFile")
///                     .destinationFolder("fakePath")
///                     .build())
///                 .errorManagement(ConnectorMappingErrorManagementArgs.builder()
///                     .errorLimit(10)
///                     .errorManagementType("StopImport")
///                     .build())
///                 .fileFilter("unknown")
///                 .folderPath("http://sample.dne/file")
///                 .format(ConnectorMappingFormatArgs.builder()
///                     .columnDelimiter("|")
///                     .formatType("TextFormat")
///                     .build())
///                 .hasHeader(false)
///                 .structure(
///                     ConnectorMappingStructureArgs.builder()
///                         .columnName("unknown1")
///                         .isEncrypted(false)
///                         .propertyName("unknwon1")
///                         .build(),
///                     ConnectorMappingStructureArgs.builder()
///                         .columnName("unknown2")
///                         .isEncrypted(true)
///                         .propertyName("unknwon2")
///                         .build())
///                 .build())
///             .resourceGroupName("TestHubRG")
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
/// const connectorMapping = new azure_native.customerinsights.ConnectorMapping("connectorMapping", {
///     connectorName: "testConnector8858",
///     description: "Test mapping",
///     displayName: "testMapping12491",
///     entityType: azure_native.customerinsights.EntityTypes.Interaction,
///     entityTypeName: "TestInteractionType2967",
///     hubName: "sdkTestHub",
///     mappingName: "testMapping12491",
///     mappingProperties: {
///         availability: {
///             frequency: azure_native.customerinsights.FrequencyTypes.Hour,
///             interval: 5,
///         },
///         completeOperation: {
///             completionOperationType: azure_native.customerinsights.CompletionOperationTypes.DeleteFile,
///             destinationFolder: "fakePath",
///         },
///         errorManagement: {
///             errorLimit: 10,
///             errorManagementType: azure_native.customerinsights.ErrorManagementTypes.StopImport,
///         },
///         fileFilter: "unknown",
///         folderPath: "http://sample.dne/file",
///         format: {
///             columnDelimiter: "|",
///             formatType: azure_native.customerinsights.FormatTypes.TextFormat,
///         },
///         hasHeader: false,
///         structure: [
///             {
///                 columnName: "unknown1",
///                 isEncrypted: false,
///                 propertyName: "unknwon1",
///             },
///             {
///                 columnName: "unknown2",
///                 isEncrypted: true,
///                 propertyName: "unknwon2",
///             },
///         ],
///     },
///     resourceGroupName: "TestHubRG",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// connector_mapping = azure_native.customerinsights.ConnectorMapping("connectorMapping",
///     connector_name="testConnector8858",
///     description="Test mapping",
///     display_name="testMapping12491",
///     entity_type=azure_native.customerinsights.EntityTypes.INTERACTION,
///     entity_type_name="TestInteractionType2967",
///     hub_name="sdkTestHub",
///     mapping_name="testMapping12491",
///     mapping_properties={
///         "availability": {
///             "frequency": azure_native.customerinsights.FrequencyTypes.HOUR,
///             "interval": 5,
///         },
///         "complete_operation": {
///             "completion_operation_type": azure_native.customerinsights.CompletionOperationTypes.DELETE_FILE,
///             "destination_folder": "fakePath",
///         },
///         "error_management": {
///             "error_limit": 10,
///             "error_management_type": azure_native.customerinsights.ErrorManagementTypes.STOP_IMPORT,
///         },
///         "file_filter": "unknown",
///         "folder_path": "http://sample.dne/file",
///         "format": {
///             "column_delimiter": "|",
///             "format_type": azure_native.customerinsights.FormatTypes.TEXT_FORMAT,
///         },
///         "has_header": False,
///         "structure": [
///             {
///                 "column_name": "unknown1",
///                 "is_encrypted": False,
///                 "property_name": "unknwon1",
///             },
///             {
///                 "column_name": "unknown2",
///                 "is_encrypted": True,
///                 "property_name": "unknwon2",
///             },
///         ],
///     },
///     resource_group_name="TestHubRG")
///
/// ```
///
/// ```yaml
/// resources:
///   connectorMapping:
///     type: azure-native:customerinsights:ConnectorMapping
///     properties:
///       connectorName: testConnector8858
///       description: Test mapping
///       displayName: testMapping12491
///       entityType: Interaction
///       entityTypeName: TestInteractionType2967
///       hubName: sdkTestHub
///       mappingName: testMapping12491
///       mappingProperties:
///         availability:
///           frequency: Hour
///           interval: 5
///         completeOperation:
///           completionOperationType: DeleteFile
///           destinationFolder: fakePath
///         errorManagement:
///           errorLimit: 10
///           errorManagementType: StopImport
///         fileFilter: unknown
///         folderPath: http://sample.dne/file
///         format:
///           columnDelimiter: '|'
///           formatType: TextFormat
///         hasHeader: false
///         structure:
///           - columnName: unknown1
///             isEncrypted: false
///             propertyName: unknwon1
///           - columnName: unknown2
///             isEncrypted: true
///             propertyName: unknwon2
///       resourceGroupName: TestHubRG
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
/// $ pulumi import azure-native:customerinsights:ConnectorMapping sdkTestHub/testConnector8858/testMapping12491 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CustomerInsights/hubs/{hubName}/connectors/{connectorName}/mappings/{mappingName}
/// ```
class ConnectorMapping extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The connector mapping name
  late final pulumi.Output<String> connectorMappingName;
  /// The connector name.
  late final pulumi.Output<String> connectorName;
  /// Type of connector.
  late final pulumi.Output<String?> connectorType;
  /// The created time.
  late final pulumi.Output<String> created;
  /// The DataFormat ID.
  late final pulumi.Output<String> dataFormatId;
  /// The description of the connector mapping.
  late final pulumi.Output<String?> description;
  /// Display name for the connector mapping.
  late final pulumi.Output<String?> displayName;
  /// Defines which entity type the file should map to.
  late final pulumi.Output<String> entityType;
  /// The mapping entity name.
  late final pulumi.Output<String> entityTypeName;
  /// The last modified time.
  late final pulumi.Output<String> lastModified;
  /// The properties of the mapping.
  late final pulumi.Output<ConnectorMappingPropertiesResponse> mappingProperties;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The next run time based on customer's settings.
  late final pulumi.Output<String> nextRunTime;
  /// The RunId.
  late final pulumi.Output<String> runId;
  /// State of connector mapping.
  late final pulumi.Output<String> state;
  /// The hub name.
  late final pulumi.Output<String> tenantId;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [ConnectorMapping].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConnectorMapping]. {@macro pulumi_customerinsights_connector_mapping_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConnectorMapping(
    String name, {
    ConnectorMappingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:customerinsights:ConnectorMapping',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    connectorMappingName = registerOutput<String>('connectorMappingName');
    connectorName = registerOutput<String>('connectorName');
    connectorType = registerOutput<String?>('connectorType');
    created = registerOutput<String>('created');
    dataFormatId = registerOutput<String>('dataFormatId');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    entityType = registerOutput<String>('entityType');
    entityTypeName = registerOutput<String>('entityTypeName');
    lastModified = registerOutput<String>('lastModified');
    mappingProperties = registerOutput<ConnectorMappingPropertiesResponse>('mappingProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectorMappingPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    nextRunTime = registerOutput<String>('nextRunTime');
    runId = registerOutput<String>('runId');
    state = registerOutput<String>('state');
    tenantId = registerOutput<String>('tenantId');
    type = registerOutput<String>('type');
  }
}
