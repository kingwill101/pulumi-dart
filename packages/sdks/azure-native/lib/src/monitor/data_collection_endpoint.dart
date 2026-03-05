import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_collection_endpoint_args.dart';
import 'data_collection_endpoint_resource_response_identity.dart';
import 'data_collection_endpoint_resource_response_system_data.dart';
import 'data_collection_endpoint_response_configuration_access.dart';
import 'data_collection_endpoint_response_failover_configuration.dart';
import 'data_collection_endpoint_response_logs_ingestion.dart';
import 'data_collection_endpoint_response_metadata.dart';
import 'data_collection_endpoint_response_metrics_ingestion.dart';
import 'data_collection_endpoint_response_network_acls.dart';

/// Definition of ARM tracked top level resource.
///
/// Uses Azure REST API version 2022-06-01.
///
/// Other available API versions: 2024-03-11. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native monitor [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update data collection endpoint
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataCollectionEndpoint = new AzureNative.Monitor.DataCollectionEndpoint("dataCollectionEndpoint", new()
///     {
///         DataCollectionEndpointName = "myCollectionEndpoint",
///         Location = "eastus",
///         NetworkAcls = new AzureNative.Monitor.Inputs.DataCollectionEndpointNetworkAclsArgs
///         {
///             PublicNetworkAccess = AzureNative.Monitor.KnownPublicNetworkAccessOptions.Enabled,
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
/// 	monitor "github.com/pulumi/pulumi-azure-native-sdk/monitor/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := monitor.NewDataCollectionEndpoint(ctx, "dataCollectionEndpoint", &monitor.DataCollectionEndpointArgs{
/// 			DataCollectionEndpointName: pulumi.String("myCollectionEndpoint"),
/// 			Location:                   pulumi.String("eastus"),
/// 			NetworkAcls: &monitor.DataCollectionEndpointNetworkAclsArgs{
/// 				PublicNetworkAccess: pulumi.String(monitor.KnownPublicNetworkAccessOptionsEnabled),
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
/// import com.pulumi.azurenative.monitor.DataCollectionEndpoint;
/// import com.pulumi.azurenative.monitor.DataCollectionEndpointArgs;
/// import com.pulumi.azurenative.monitor.inputs.DataCollectionEndpointNetworkAclsArgs;
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
///         var dataCollectionEndpoint = new DataCollectionEndpoint("dataCollectionEndpoint", DataCollectionEndpointArgs.builder()
///             .dataCollectionEndpointName("myCollectionEndpoint")
///             .location("eastus")
///             .networkAcls(DataCollectionEndpointNetworkAclsArgs.builder()
///                 .publicNetworkAccess("Enabled")
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
/// const dataCollectionEndpoint = new azure_native.monitor.DataCollectionEndpoint("dataCollectionEndpoint", {
///     dataCollectionEndpointName: "myCollectionEndpoint",
///     location: "eastus",
///     networkAcls: {
///         publicNetworkAccess: azure_native.monitor.KnownPublicNetworkAccessOptions.Enabled,
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
/// data_collection_endpoint = azure_native.monitor.DataCollectionEndpoint("dataCollectionEndpoint",
///     data_collection_endpoint_name="myCollectionEndpoint",
///     location="eastus",
///     network_acls={
///         "public_network_access": azure_native.monitor.KnownPublicNetworkAccessOptions.ENABLED,
///     },
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   dataCollectionEndpoint:
///     type: azure-native:monitor:DataCollectionEndpoint
///     properties:
///       dataCollectionEndpointName: myCollectionEndpoint
///       location: eastus
///       networkAcls:
///         publicNetworkAccess: Enabled
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
/// $ pulumi import azure-native:monitor:DataCollectionEndpoint myCollectionEndpoint /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Insights/dataCollectionEndpoints/{dataCollectionEndpointName}
/// ```
class DataCollectionEndpoint extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The endpoint used by clients to access their configuration.
  late final pulumi.Output<DataCollectionEndpointResponseConfigurationAccess?> configurationAccess;
  /// Description of the data collection endpoint.
  late final pulumi.Output<String?> description;
  /// Resource entity tag (ETag).
  late final pulumi.Output<String> etag;
  /// Failover configuration on this endpoint. This property is READ-ONLY.
  late final pulumi.Output<DataCollectionEndpointResponseFailoverConfiguration> failoverConfiguration;
  /// Managed service identity of the resource.
  late final pulumi.Output<DataCollectionEndpointResourceResponseIdentity?> identity;
  /// The immutable ID of this data collection endpoint resource. This property is READ-ONLY.
  late final pulumi.Output<String?> immutableId;
  /// The kind of the resource.
  late final pulumi.Output<String?> kind;
  /// The geo-location where the resource lives.
  late final pulumi.Output<String> location;
  /// The endpoint used by clients to ingest logs.
  late final pulumi.Output<DataCollectionEndpointResponseLogsIngestion?> logsIngestion;
  /// Metadata for the resource. This property is READ-ONLY.
  late final pulumi.Output<DataCollectionEndpointResponseMetadata> metadata;
  /// The endpoint used by clients to ingest metrics.
  late final pulumi.Output<DataCollectionEndpointResponseMetricsIngestion?> metricsIngestion;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// Network access control rules for the endpoints.
  late final pulumi.Output<DataCollectionEndpointResponseNetworkAcls?> networkAcls;
  /// List of Azure Monitor Private Link Scope Resources to which this data collection endpoint resource is associated. This property is READ-ONLY.
  late final pulumi.Output<List<Map<String, dynamic>>> privateLinkScopedResources;
  /// The resource provisioning state. This property is READ-ONLY.
  late final pulumi.Output<String> provisioningState;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<DataCollectionEndpointResourceResponseSystemData> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [DataCollectionEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataCollectionEndpoint]. {@macro pulumi_monitor_data_collection_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataCollectionEndpoint(
    String name, {
    DataCollectionEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:monitor:DataCollectionEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    configurationAccess = registerOutput<DataCollectionEndpointResponseConfigurationAccess?>('configurationAccess', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataCollectionEndpointResponseConfigurationAccess.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    etag = registerOutput<String>('etag');
    failoverConfiguration = registerOutput<DataCollectionEndpointResponseFailoverConfiguration>('failoverConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataCollectionEndpointResponseFailoverConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<DataCollectionEndpointResourceResponseIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataCollectionEndpointResourceResponseIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    immutableId = registerOutput<String?>('immutableId');
    kind = registerOutput<String?>('kind');
    location = registerOutput<String>('location');
    logsIngestion = registerOutput<DataCollectionEndpointResponseLogsIngestion?>('logsIngestion', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataCollectionEndpointResponseLogsIngestion.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    metadata = registerOutput<DataCollectionEndpointResponseMetadata>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataCollectionEndpointResponseMetadata.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    metricsIngestion = registerOutput<DataCollectionEndpointResponseMetricsIngestion?>('metricsIngestion', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataCollectionEndpointResponseMetricsIngestion.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    networkAcls = registerOutput<DataCollectionEndpointResponseNetworkAcls?>('networkAcls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataCollectionEndpointResponseNetworkAcls.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateLinkScopedResources = registerOutput<List<Map<String, dynamic>>>('privateLinkScopedResources');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<DataCollectionEndpointResourceResponseSystemData>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataCollectionEndpointResourceResponseSystemData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
