import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_response.dart';
import 'identity_response.dart';
import 'namespace_args.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Single Namespace item in List or Get Operation
///
/// Uses Azure REST API version 2024-01-01. In version 2.x of the Azure Native provider, it used API version 2022-10-01-preview.
///
/// Other available API versions: 2018-01-01-preview, 2021-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2024-05-01-preview, 2025-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:eventhub:Namespace NamespaceSample /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventHub/namespaces/{namespaceName}
/// ```
class Namespace extends pulumi.CustomResource {
  /// Alternate name specified when alias and namespace names are same.
  late final pulumi.Output<String?> alternateName;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Cluster ARM ID of the Namespace.
  late final pulumi.Output<String?> clusterArmId;
  /// The time the Namespace was created.
  late final pulumi.Output<String> createdAt;
  /// This property disables SAS authentication for the Event Hubs namespace.
  late final pulumi.Output<bool?> disableLocalAuth;
  /// Properties of BYOK Encryption description
  late final pulumi.Output<EncryptionResponse?> encryption;
  /// Properties of BYOK Identity description
  late final pulumi.Output<IdentityResponse?> identity;
  /// Value that indicates whether AutoInflate is enabled for eventhub namespace.
  late final pulumi.Output<bool?> isAutoInflateEnabled;
  /// Value that indicates whether Kafka is enabled for eventhub namespace.
  late final pulumi.Output<bool?> kafkaEnabled;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// Upper limit of throughput units when AutoInflate is enabled, value should be within 0 to 20 throughput units. ( '0' if AutoInflateEnabled = true)
  late final pulumi.Output<int?> maximumThroughputUnits;
  /// Identifier for Azure Insights metrics.
  late final pulumi.Output<String> metricId;
  /// The minimum TLS version for the cluster to support, e.g. '1.2'
  late final pulumi.Output<String?> minimumTlsVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// List of private endpoint connections.
  late final pulumi.Output<List<Map<String, dynamic>>?> privateEndpointConnections;
  /// Provisioning state of the Namespace.
  late final pulumi.Output<String> provisioningState;
  /// This determines if traffic is allowed over public network. By default it is enabled.
  late final pulumi.Output<String?> publicNetworkAccess;
  /// Endpoint you can use to perform Service Bus operations.
  late final pulumi.Output<String> serviceBusEndpoint;
  /// Properties of sku resource
  late final pulumi.Output<SkuResponse?> sku;
  /// Status of the Namespace.
  late final pulumi.Output<String> status;
  /// The system meta data relating to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The time the Namespace was updated.
  late final pulumi.Output<String> updatedAt;
  /// Enabling this property creates a Standard Event Hubs Namespace in regions supported availability zones.
  late final pulumi.Output<bool?> zoneRedundant;

  /// Creates a new [Namespace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Namespace]. {@macro pulumi_eventhub_namespace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Namespace(
    String name, {
    NamespaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:eventhub:Namespace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    alternateName = registerOutput<String?>('alternateName');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    clusterArmId = registerOutput<String?>('clusterArmId');
    createdAt = registerOutput<String>('createdAt');
    disableLocalAuth = registerOutput<bool?>('disableLocalAuth');
    encryption = registerOutput<EncryptionResponse?>('encryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EncryptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<IdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    isAutoInflateEnabled = registerOutput<bool?>('isAutoInflateEnabled');
    kafkaEnabled = registerOutput<bool?>('kafkaEnabled');
    location = registerOutput<String?>('location');
    maximumThroughputUnits = registerOutput<int?>('maximumThroughputUnits');
    metricId = registerOutput<String>('metricId');
    minimumTlsVersion = registerOutput<String?>('minimumTlsVersion');
    this.name = registerOutput<String>('name');
    privateEndpointConnections = registerOutput<List<Map<String, dynamic>>?>('privateEndpointConnections');
    provisioningState = registerOutput<String>('provisioningState');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    serviceBusEndpoint = registerOutput<String>('serviceBusEndpoint');
    sku = registerOutput<SkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    updatedAt = registerOutput<String>('updatedAt');
    zoneRedundant = registerOutput<bool?>('zoneRedundant');
  }
}
