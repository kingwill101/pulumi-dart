import 'package:pulumi/pulumi.dart' as pulumi;
import 'analytics_connector_args.dart';
import 'analytics_connector_data_lake_data_destination_response.dart';
import 'analytics_connector_fhir_service_data_source_response.dart';
import 'analytics_connector_fhir_to_parquet_mapping_response.dart';
import 'service_managed_identity_response_identity.dart';
import 'system_data_response.dart';

/// Analytics Connector definition.
///
/// Uses Azure REST API version 2022-10-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-10-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a Analytics Connectors Service
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var analyticsConnector = new AzureNative.HealthcareApis.AnalyticsConnector("analyticsConnector", new()
///     {
///         AnalyticsConnectorName = "exampleconnector",
///         DataDestinationConfiguration = new AzureNative.HealthcareApis.Inputs.AnalyticsConnectorDataLakeDataDestinationArgs
///         {
///             DataLakeName = "exampledatalake",
///             Type = "datalake",
///         },
///         DataMappingConfiguration = new AzureNative.HealthcareApis.Inputs.AnalyticsConnectorFhirToParquetMappingArgs
///         {
///             ExtensionSchemaReference = "acrexample.azurecr.io/blah@sha256aaa/Extension",
///             FilterConfigurationReference = "acrexample.azurecr.io/blah@sha256xxx",
///             Type = "fhirToParquet",
///         },
///         DataSourceConfiguration = new AzureNative.HealthcareApis.Inputs.AnalyticsConnectorFhirServiceDataSourceArgs
///         {
///             Kind = AzureNative.HealthcareApis.FhirServiceVersion.R4,
///             Type = "fhirservice",
///             Url = "https://workspace-examplefhir.fhir.azurehealthcareapis.com",
///         },
///         Location = "westus",
///         ResourceGroupName = "testRG",
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
/// 		_, err := healthcareapis.NewAnalyticsConnector(ctx, "analyticsConnector", &healthcareapis.AnalyticsConnectorArgs{
/// 			AnalyticsConnectorName: pulumi.String("exampleconnector"),
/// 			DataDestinationConfiguration: &healthcareapis.AnalyticsConnectorDataLakeDataDestinationArgs{
/// 				DataLakeName: pulumi.String("exampledatalake"),
/// 				Type:         pulumi.String("datalake"),
/// 			},
/// 			DataMappingConfiguration: &healthcareapis.AnalyticsConnectorFhirToParquetMappingArgs{
/// 				ExtensionSchemaReference:     pulumi.String("acrexample.azurecr.io/blah@sha256aaa/Extension"),
/// 				FilterConfigurationReference: pulumi.String("acrexample.azurecr.io/blah@sha256xxx"),
/// 				Type:                         pulumi.String("fhirToParquet"),
/// 			},
/// 			DataSourceConfiguration: &healthcareapis.AnalyticsConnectorFhirServiceDataSourceArgs{
/// 				Kind: pulumi.String(healthcareapis.FhirServiceVersionR4),
/// 				Type: pulumi.String("fhirservice"),
/// 				Url:  pulumi.String("https://workspace-examplefhir.fhir.azurehealthcareapis.com"),
/// 			},
/// 			Location:          pulumi.String("westus"),
/// 			ResourceGroupName: pulumi.String("testRG"),
/// 			WorkspaceName:     pulumi.String("workspace1"),
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
/// import com.pulumi.azurenative.healthcareapis.AnalyticsConnector;
/// import com.pulumi.azurenative.healthcareapis.AnalyticsConnectorArgs;
/// import com.pulumi.azurenative.healthcareapis.inputs.AnalyticsConnectorDataLakeDataDestinationArgs;
/// import com.pulumi.azurenative.healthcareapis.inputs.AnalyticsConnectorFhirToParquetMappingArgs;
/// import com.pulumi.azurenative.healthcareapis.inputs.AnalyticsConnectorFhirServiceDataSourceArgs;
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
///         var analyticsConnector = new AnalyticsConnector("analyticsConnector", AnalyticsConnectorArgs.builder()
///             .analyticsConnectorName("exampleconnector")
///             .dataDestinationConfiguration(AnalyticsConnectorDataLakeDataDestinationArgs.builder()
///                 .dataLakeName("exampledatalake")
///                 .type("datalake")
///                 .build())
///             .dataMappingConfiguration(AnalyticsConnectorFhirToParquetMappingArgs.builder()
///                 .extensionSchemaReference("acrexample.azurecr.io/blah@sha256aaa/Extension")
///                 .filterConfigurationReference("acrexample.azurecr.io/blah@sha256xxx")
///                 .type("fhirToParquet")
///                 .build())
///             .dataSourceConfiguration(AnalyticsConnectorFhirServiceDataSourceArgs.builder()
///                 .kind("R4")
///                 .type("fhirservice")
///                 .url("https://workspace-examplefhir.fhir.azurehealthcareapis.com")
///                 .build())
///             .location("westus")
///             .resourceGroupName("testRG")
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
/// const analyticsConnector = new azure_native.healthcareapis.AnalyticsConnector("analyticsConnector", {
///     analyticsConnectorName: "exampleconnector",
///     dataDestinationConfiguration: {
///         dataLakeName: "exampledatalake",
///         type: "datalake",
///     },
///     dataMappingConfiguration: {
///         extensionSchemaReference: "acrexample.azurecr.io/blah@sha256aaa/Extension",
///         filterConfigurationReference: "acrexample.azurecr.io/blah@sha256xxx",
///         type: "fhirToParquet",
///     },
///     dataSourceConfiguration: {
///         kind: azure_native.healthcareapis.FhirServiceVersion.R4,
///         type: "fhirservice",
///         url: "https://workspace-examplefhir.fhir.azurehealthcareapis.com",
///     },
///     location: "westus",
///     resourceGroupName: "testRG",
///     workspaceName: "workspace1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// analytics_connector = azure_native.healthcareapis.AnalyticsConnector("analyticsConnector",
///     analytics_connector_name="exampleconnector",
///     data_destination_configuration={
///         "data_lake_name": "exampledatalake",
///         "type": "datalake",
///     },
///     data_mapping_configuration={
///         "extension_schema_reference": "acrexample.azurecr.io/blah@sha256aaa/Extension",
///         "filter_configuration_reference": "acrexample.azurecr.io/blah@sha256xxx",
///         "type": "fhirToParquet",
///     },
///     data_source_configuration={
///         "kind": azure_native.healthcareapis.FhirServiceVersion.R4,
///         "type": "fhirservice",
///         "url": "https://workspace-examplefhir.fhir.azurehealthcareapis.com",
///     },
///     location="westus",
///     resource_group_name="testRG",
///     workspace_name="workspace1")
///
/// ```
///
/// ```yaml
/// resources:
///   analyticsConnector:
///     type: azure-native:healthcareapis:AnalyticsConnector
///     properties:
///       analyticsConnectorName: exampleconnector
///       dataDestinationConfiguration:
///         dataLakeName: exampledatalake
///         type: datalake
///       dataMappingConfiguration:
///         extensionSchemaReference: acrexample.azurecr.io/blah@sha256aaa/Extension
///         filterConfigurationReference: acrexample.azurecr.io/blah@sha256xxx
///         type: fhirToParquet
///       dataSourceConfiguration:
///         kind: R4
///         type: fhirservice
///         url: https://workspace-examplefhir.fhir.azurehealthcareapis.com
///       location: westus
///       resourceGroupName: testRG
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
/// $ pulumi import azure-native:healthcareapis:AnalyticsConnector exampleconnector /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HealthcareApis/workspaces/{workspaceName}/analyticsconnectors/{analyticsConnectorName}
/// ```
class AnalyticsConnector extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Data destination configuration for Analytics Connector.
  late final pulumi.Output<AnalyticsConnectorDataLakeDataDestinationResponse>
  dataDestinationConfiguration;

  /// Data mapping configuration for Analytics Connector.
  late final pulumi.Output<AnalyticsConnectorFhirToParquetMappingResponse>
  dataMappingConfiguration;

  /// Data source for Analytics Connector.
  late final pulumi.Output<AnalyticsConnectorFhirServiceDataSourceResponse>
  dataSourceConfiguration;

  /// An etag associated with the resource, used for optimistic concurrency when editing it.
  late final pulumi.Output<String?> etag;

  /// Setting indicating whether the service has a managed identity associated with it.
  late final pulumi.Output<ServiceManagedIdentityResponseIdentity?> identity;

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

  /// Creates a new [AnalyticsConnector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AnalyticsConnector]. {@macro pulumi_healthcareapis_analytics_connector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AnalyticsConnector(
    String name, {
    AnalyticsConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:healthcareapis:AnalyticsConnector',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dataDestinationConfiguration =
        registerOutput<AnalyticsConnectorDataLakeDataDestinationResponse>(
          'dataDestinationConfiguration',
        );
    dataMappingConfiguration =
        registerOutput<AnalyticsConnectorFhirToParquetMappingResponse>(
          'dataMappingConfiguration',
        );
    dataSourceConfiguration =
        registerOutput<AnalyticsConnectorFhirServiceDataSourceResponse>(
          'dataSourceConfiguration',
        );
    etag = registerOutput<String?>('etag');
    identity = registerOutput<ServiceManagedIdentityResponseIdentity?>(
      'identity',
    );
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
