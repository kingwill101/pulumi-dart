import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_blob_storage_sink_connector_service_info_response.dart';
import 'connector_args.dart';
import 'connector_info_base_response.dart';
import 'kafka_azure_blob_storage_sink_connector_info_response.dart';
import 'system_data_response.dart';

/// Details of connector record
///
/// Uses Azure REST API version 2024-07-01. In version 2.x of the Azure Native provider, it used API version 2024-07-01.
///
/// Other available API versions: 2025-07-17-preview, 2025-08-18-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native confluent [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Connector_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connector = new AzureNative.Confluent.Connector("connector", new()
///     {
///         ClusterId = "dlz-f3a90de",
///         ConnectorBasicInfo = new AzureNative.Confluent.Inputs.ConnectorInfoBaseArgs
///         {
///             ConnectorClass = "AZUREBLOBSTORAGESINK",
///             ConnectorName = "connector-1",
///             ConnectorType = AzureNative.Confluent.ConnectorType.SINK,
///         },
///         ConnectorName = "connector-1",
///         ConnectorServiceTypeInfo = new AzureNative.Confluent.Inputs.AzureBlobStorageSinkConnectorServiceInfoArgs
///         {
///             ConnectorServiceType = "AzureBlobStorageSinkConnector",
///             StorageAccountKey = "*******",
///             StorageAccountName = "stcfaccount-1",
///             StorageContainerName = "continer-1",
///         },
///         EnvironmentId = "env-12132",
///         OrganizationName = "myOrganization",
///         PartnerConnectorInfo = new AzureNative.Confluent.Inputs.KafkaAzureBlobStorageSinkConnectorInfoArgs
///         {
///             ApiKey = "xxxxxxx",
///             ApiSecret = "*******",
///             AuthType = AzureNative.Confluent.AuthType.KAFKA_API_KEY,
///             FlushSize = "1000",
///             InputFormat = AzureNative.Confluent.DataFormatType.JSON,
///             MaxTasks = "2",
///             OutputFormat = AzureNative.Confluent.DataFormatType.JSON,
///             PartnerConnectorType = "KafkaAzureBlobStorageSink",
///             TimeInterval = "DAILY",
///             Topics = new[]
///             {
///                 "topic-1",
///             },
///             TopicsDir = "topicsDir",
///         },
///         ResourceGroupName = "myResourceGroup",
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
/// 	confluent "github.com/pulumi/pulumi-azure-native-sdk/confluent/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := confluent.NewConnector(ctx, "connector", &confluent.ConnectorArgs{
/// 			ClusterId: pulumi.String("dlz-f3a90de"),
/// 			ConnectorBasicInfo: &confluent.ConnectorInfoBaseArgs{
/// 				ConnectorClass: pulumi.String("AZUREBLOBSTORAGESINK"),
/// 				ConnectorName:  pulumi.String("connector-1"),
/// 				ConnectorType:  pulumi.String(confluent.ConnectorTypeSINK),
/// 			},
/// 			ConnectorName: pulumi.String("connector-1"),
/// 			ConnectorServiceTypeInfo: &confluent.AzureBlobStorageSinkConnectorServiceInfoArgs{
/// 				ConnectorServiceType: pulumi.String("AzureBlobStorageSinkConnector"),
/// 				StorageAccountKey:    pulumi.String("*******"),
/// 				StorageAccountName:   pulumi.String("stcfaccount-1"),
/// 				StorageContainerName: pulumi.String("continer-1"),
/// 			},
/// 			EnvironmentId:    pulumi.String("env-12132"),
/// 			OrganizationName: pulumi.String("myOrganization"),
/// 			PartnerConnectorInfo: &confluent.KafkaAzureBlobStorageSinkConnectorInfoArgs{
/// 				ApiKey:               pulumi.String("xxxxxxx"),
/// 				ApiSecret:            pulumi.String("*******"),
/// 				AuthType:             pulumi.String(confluent.AuthType_KAFKA_API_KEY),
/// 				FlushSize:            pulumi.String("1000"),
/// 				InputFormat:          pulumi.String(confluent.DataFormatTypeJSON),
/// 				MaxTasks:             pulumi.String("2"),
/// 				OutputFormat:         pulumi.String(confluent.DataFormatTypeJSON),
/// 				PartnerConnectorType: pulumi.String("KafkaAzureBlobStorageSink"),
/// 				TimeInterval:         pulumi.String("DAILY"),
/// 				Topics: pulumi.StringArray{
/// 					pulumi.String("topic-1"),
/// 				},
/// 				TopicsDir: pulumi.String("topicsDir"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// import com.pulumi.azurenative.confluent.Connector;
/// import com.pulumi.azurenative.confluent.ConnectorArgs;
/// import com.pulumi.azurenative.confluent.inputs.ConnectorInfoBaseArgs;
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
///         var connector = new Connector("connector", ConnectorArgs.builder()
///             .clusterId("dlz-f3a90de")
///             .connectorBasicInfo(ConnectorInfoBaseArgs.builder()
///                 .connectorClass("AZUREBLOBSTORAGESINK")
///                 .connectorName("connector-1")
///                 .connectorType("SINK")
///                 .build())
///             .connectorName("connector-1")
///             .connectorServiceTypeInfo(AzureBlobStorageSinkConnectorServiceInfoArgs.builder()
///                 .connectorServiceType("AzureBlobStorageSinkConnector")
///                 .storageAccountKey("*******")
///                 .storageAccountName("stcfaccount-1")
///                 .storageContainerName("continer-1")
///                 .build())
///             .environmentId("env-12132")
///             .organizationName("myOrganization")
///             .partnerConnectorInfo(KafkaAzureBlobStorageSinkConnectorInfoArgs.builder()
///                 .apiKey("xxxxxxx")
///                 .apiSecret("*******")
///                 .authType("KAFKA_API_KEY")
///                 .flushSize("1000")
///                 .inputFormat("JSON")
///                 .maxTasks("2")
///                 .outputFormat("JSON")
///                 .partnerConnectorType("KafkaAzureBlobStorageSink")
///                 .timeInterval("DAILY")
///                 .topics("topic-1")
///                 .topicsDir("topicsDir")
///                 .build())
///             .resourceGroupName("myResourceGroup")
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
/// const connector = new azure_native.confluent.Connector("connector", {
///     clusterId: "dlz-f3a90de",
///     connectorBasicInfo: {
///         connectorClass: "AZUREBLOBSTORAGESINK",
///         connectorName: "connector-1",
///         connectorType: azure_native.confluent.ConnectorType.SINK,
///     },
///     connectorName: "connector-1",
///     connectorServiceTypeInfo: {
///         connectorServiceType: "AzureBlobStorageSinkConnector",
///         storageAccountKey: "*******",
///         storageAccountName: "stcfaccount-1",
///         storageContainerName: "continer-1",
///     },
///     environmentId: "env-12132",
///     organizationName: "myOrganization",
///     partnerConnectorInfo: {
///         apiKey: "xxxxxxx",
///         apiSecret: "*******",
///         authType: azure_native.confluent.AuthType.KAFKA_API_KEY,
///         flushSize: "1000",
///         inputFormat: azure_native.confluent.DataFormatType.JSON,
///         maxTasks: "2",
///         outputFormat: azure_native.confluent.DataFormatType.JSON,
///         partnerConnectorType: "KafkaAzureBlobStorageSink",
///         timeInterval: "DAILY",
///         topics: ["topic-1"],
///         topicsDir: "topicsDir",
///     },
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// connector = azure_native.confluent.Connector("connector",
///     cluster_id="dlz-f3a90de",
///     connector_basic_info={
///         "connector_class": "AZUREBLOBSTORAGESINK",
///         "connector_name": "connector-1",
///         "connector_type": azure_native.confluent.ConnectorType.SINK,
///     },
///     connector_name="connector-1",
///     connector_service_type_info={
///         "connector_service_type": "AzureBlobStorageSinkConnector",
///         "storage_account_key": "*******",
///         "storage_account_name": "stcfaccount-1",
///         "storage_container_name": "continer-1",
///     },
///     environment_id="env-12132",
///     organization_name="myOrganization",
///     partner_connector_info={
///         "api_key": "xxxxxxx",
///         "api_secret": "*******",
///         "auth_type": azure_native.confluent.AuthType.KAFK_A_AP_I_KEY,
///         "flush_size": "1000",
///         "input_format": azure_native.confluent.DataFormatType.JSON,
///         "max_tasks": "2",
///         "output_format": azure_native.confluent.DataFormatType.JSON,
///         "partner_connector_type": "KafkaAzureBlobStorageSink",
///         "time_interval": "DAILY",
///         "topics": ["topic-1"],
///         "topics_dir": "topicsDir",
///     },
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   connector:
///     type: azure-native:confluent:Connector
///     properties:
///       clusterId: dlz-f3a90de
///       connectorBasicInfo:
///         connectorClass: AZUREBLOBSTORAGESINK
///         connectorName: connector-1
///         connectorType: SINK
///       connectorName: connector-1
///       connectorServiceTypeInfo:
///         connectorServiceType: AzureBlobStorageSinkConnector
///         storageAccountKey: '*******'
///         storageAccountName: stcfaccount-1
///         storageContainerName: continer-1
///       environmentId: env-12132
///       organizationName: myOrganization
///       partnerConnectorInfo:
///         apiKey: xxxxxxx
///         apiSecret: '*******'
///         authType: KAFKA_API_KEY
///         flushSize: '1000'
///         inputFormat: JSON
///         maxTasks: '2'
///         outputFormat: JSON
///         partnerConnectorType: KafkaAzureBlobStorageSink
///         timeInterval: DAILY
///         topics:
///           - topic-1
///         topicsDir: topicsDir
///       resourceGroupName: myResourceGroup
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
/// $ pulumi import azure-native:confluent:Connector connector-1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Confluent/organizations/{organizationName}/environments/{environmentId}/clusters/{clusterId}/connectors/{connectorName}
/// ```
class Connector extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Connector Info Base
  late final pulumi.Output<ConnectorInfoBaseResponse?> connectorBasicInfo;

  /// Connector Service type info base properties.
  late final pulumi.Output<AzureBlobStorageSinkConnectorServiceInfoResponse?>
  connectorServiceTypeInfo;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The connection information consumed by applications.
  late final pulumi.Output<KafkaAzureBlobStorageSinkConnectorInfoResponse?>
  partnerConnectorInfo;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Connector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Connector]. {@macro pulumi_confluent_connector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Connector(
    String name, {
    ConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:confluent:Connector',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    connectorBasicInfo = registerOutput<ConnectorInfoBaseResponse?>(
      'connectorBasicInfo',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ConnectorInfoBaseResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    connectorServiceTypeInfo =
        registerOutput<AzureBlobStorageSinkConnectorServiceInfoResponse?>(
          'connectorServiceTypeInfo',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return AzureBlobStorageSinkConnectorServiceInfoResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    this.name = registerOutput<String>('name');
    partnerConnectorInfo =
        registerOutput<KafkaAzureBlobStorageSinkConnectorInfoResponse?>(
          'partnerConnectorInfo',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return KafkaAzureBlobStorageSinkConnectorInfoResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
