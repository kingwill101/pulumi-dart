// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_response.dart';
import 'identity_response.dart';
import 'private_endpoint_connection_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getNamespace.
class GetNamespaceResult {
  /// Alternate name specified when alias and namespace names are same.
  final String? alternateName;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Cluster ARM ID of the Namespace.
  final String? clusterArmId;
  /// The time the Namespace was created.
  final String createdAt;
  /// This property disables SAS authentication for the Event Hubs namespace.
  final bool? disableLocalAuth;
  /// Properties of BYOK Encryption description
  final EncryptionResponse? encryption;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Properties of BYOK Identity description
  final IdentityResponse? identity;
  /// Value that indicates whether AutoInflate is enabled for eventhub namespace.
  final bool? isAutoInflateEnabled;
  /// Value that indicates whether Kafka is enabled for eventhub namespace.
  final bool? kafkaEnabled;
  /// Resource location.
  final String? location;
  /// Upper limit of throughput units when AutoInflate is enabled, value should be within 0 to 20 throughput units. ( '0' if AutoInflateEnabled = true)
  final int? maximumThroughputUnits;
  /// Identifier for Azure Insights metrics.
  final String metricId;
  /// The minimum TLS version for the cluster to support, e.g. '1.2'
  final String? minimumTlsVersion;
  /// The name of the resource
  final String name;
  /// List of private endpoint connections.
  final List<PrivateEndpointConnectionResponse>? privateEndpointConnections;
  /// Provisioning state of the Namespace.
  final String provisioningState;
  /// This determines if traffic is allowed over public network. By default it is enabled.
  final String? publicNetworkAccess;
  /// Endpoint you can use to perform Service Bus operations.
  final String serviceBusEndpoint;
  /// Properties of sku resource
  final SkuResponse? sku;
  /// Status of the Namespace.
  final String status;
  /// The system meta data relating to this resource.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The time the Namespace was updated.
  final String updatedAt;
  /// Enabling this property creates a Standard Event Hubs Namespace in regions supported availability zones.
  final bool? zoneRedundant;

  /// Creates a new [GetNamespaceResult].
  /// [alternateName] Alternate name specified when alias and namespace names are same.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [clusterArmId] Cluster ARM ID of the Namespace.
  /// [createdAt] The time the Namespace was created.
  /// [disableLocalAuth] This property disables SAS authentication for the Event Hubs namespace.
  /// [encryption] Properties of BYOK Encryption description
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] Properties of BYOK Identity description
  /// [isAutoInflateEnabled] Value that indicates whether AutoInflate is enabled for eventhub namespace.
  /// [kafkaEnabled] Value that indicates whether Kafka is enabled for eventhub namespace.
  /// [location] Resource location.
  /// [maximumThroughputUnits] Upper limit of throughput units when AutoInflate is enabled, value should be within 0 to 20 throughput units. ( '0' if AutoInflateEnabled = true)
  /// [metricId] Identifier for Azure Insights metrics.
  /// [minimumTlsVersion] The minimum TLS version for the cluster to support, e.g. '1.2'
  /// [name] The name of the resource
  /// [privateEndpointConnections] List of private endpoint connections.
  /// [provisioningState] Provisioning state of the Namespace.
  /// [publicNetworkAccess] This determines if traffic is allowed over public network. By default it is enabled.
  /// [serviceBusEndpoint] Endpoint you can use to perform Service Bus operations.
  /// [sku] Properties of sku resource
  /// [status] Status of the Namespace.
  /// [systemData] The system meta data relating to this resource.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [updatedAt] The time the Namespace was updated.
  /// [zoneRedundant] Enabling this property creates a Standard Event Hubs Namespace in regions supported availability zones.
  const GetNamespaceResult({
    this.alternateName,
    required this.azureApiVersion,
    this.clusterArmId,
    required this.createdAt,
    this.disableLocalAuth,
    this.encryption,
    required this.id,
    this.identity,
    this.isAutoInflateEnabled,
    this.kafkaEnabled,
    this.location,
    this.maximumThroughputUnits,
    required this.metricId,
    this.minimumTlsVersion,
    required this.name,
    this.privateEndpointConnections,
    required this.provisioningState,
    this.publicNetworkAccess,
    required this.serviceBusEndpoint,
    this.sku,
    required this.status,
    required this.systemData,
    this.tags,
    required this.type,
    required this.updatedAt,
    this.zoneRedundant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alternateName': ?alternateName,
      'azureApiVersion': azureApiVersion,
      'clusterArmId': ?clusterArmId,
      'createdAt': createdAt,
      'disableLocalAuth': ?disableLocalAuth,
      'encryption': ?encryption?.toMap(),
      'id': id,
      'identity': ?identity?.toMap(),
      'isAutoInflateEnabled': ?isAutoInflateEnabled,
      'kafkaEnabled': ?kafkaEnabled,
      'location': ?location,
      'maximumThroughputUnits': ?maximumThroughputUnits,
      'metricId': metricId,
      'minimumTlsVersion': ?minimumTlsVersion,
      'name': name,
      'privateEndpointConnections': ?(() { final guardedValue = privateEndpointConnections; if (guardedValue == null) return null; return pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'serviceBusEndpoint': serviceBusEndpoint,
      'sku': ?sku?.toMap(),
      'status': status,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'updatedAt': updatedAt,
      'zoneRedundant': ?zoneRedundant,
    };
  }

  factory GetNamespaceResult.fromMap(Map<String, dynamic> map) {
    return GetNamespaceResult(
      alternateName: (() { final guardedValue = map['alternateName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      clusterArmId: (() { final guardedValue = map['clusterArmId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: map['createdAt'] as String,
      disableLocalAuth: (() { final guardedValue = map['disableLocalAuth']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return EncryptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      isAutoInflateEnabled: (() { final guardedValue = map['isAutoInflateEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      kafkaEnabled: (() { final guardedValue = map['kafkaEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maximumThroughputUnits: (() { final guardedValue = map['maximumThroughputUnits']; if (guardedValue == null) return null; return guardedValue as int; })(),
      metricId: map['metricId'] as String,
      minimumTlsVersion: (() { final guardedValue = map['minimumTlsVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      privateEndpointConnections: (() { final guardedValue = map['privateEndpointConnections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(guardedValue, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: map['provisioningState'] as String,
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceBusEndpoint: map['serviceBusEndpoint'] as String,
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      status: map['status'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      updatedAt: map['updatedAt'] as String,
      zoneRedundant: (() { final guardedValue = map['zoneRedundant']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}

