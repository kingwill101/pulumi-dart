// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption.dart';
import 'identity.dart';
import 'private_endpoint_connection_eventhub.dart';
import 'sku.dart';

/// {@template pulumi_eventhub_namespace_args_doc}
/// The set of arguments for Namespace.
/// {@endtemplate}
/// {@macro pulumi_eventhub_namespace_args_doc}
class NamespaceArgs {
  /// Alternate name specified when alias and namespace names are same.
  final pulumi.Input<String>? alternateName;
  /// Cluster ARM ID of the Namespace.
  final pulumi.Input<String>? clusterArmId;
  /// This property disables SAS authentication for the Event Hubs namespace.
  final pulumi.Input<bool>? disableLocalAuth;
  /// Properties of BYOK Encryption description
  final pulumi.Input<Encryption>? encryption;
  /// Properties of BYOK Identity description
  final pulumi.Input<Identity>? identity;
  /// Value that indicates whether AutoInflate is enabled for eventhub namespace.
  final pulumi.Input<bool>? isAutoInflateEnabled;
  /// Value that indicates whether Kafka is enabled for eventhub namespace.
  final pulumi.Input<bool>? kafkaEnabled;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// Upper limit of throughput units when AutoInflate is enabled, value should be within 0 to 20 throughput units. ( '0' if AutoInflateEnabled = true)
  final pulumi.Input<int>? maximumThroughputUnits;
  /// The minimum TLS version for the cluster to support, e.g. '1.2'
  final pulumi.Input<String>? minimumTlsVersion;
  /// The Namespace name
  final pulumi.Input<String>? namespaceName;
  /// List of private endpoint connections.
  /// These are also available as standalone resources. Do not mix inline and standalone resource as they will conflict with each other, leading to resources deletion.
  final pulumi.Input<List<PrivateEndpointConnectionEventhub>>? privateEndpointConnections;
  /// This determines if traffic is allowed over public network. By default it is enabled.
  final pulumi.Input<String>? publicNetworkAccess;
  /// Name of the resource group within the azure subscription.
  final pulumi.Input<String> resourceGroupName;
  /// Properties of sku resource
  final pulumi.Input<Sku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Enabling this property creates a Standard Event Hubs Namespace in regions supported availability zones.
  final pulumi.Input<bool>? zoneRedundant;

  /// Creates a new [NamespaceArgs].
  /// [alternateName] Alternate name specified when alias and namespace names are same.
  /// [clusterArmId] Cluster ARM ID of the Namespace.
  /// [disableLocalAuth] This property disables SAS authentication for the Event Hubs namespace.
  /// [encryption] Properties of BYOK Encryption description
  /// [identity] Properties of BYOK Identity description
  /// [isAutoInflateEnabled] Value that indicates whether AutoInflate is enabled for eventhub namespace.
  /// [kafkaEnabled] Value that indicates whether Kafka is enabled for eventhub namespace.
  /// [location] Resource location.
  /// [maximumThroughputUnits] Upper limit of throughput units when AutoInflate is enabled, value should be within 0 to 20 throughput units. ( '0' if AutoInflateEnabled = true)
  /// [minimumTlsVersion] The minimum TLS version for the cluster to support, e.g. '1.2'
  /// [namespaceName] The Namespace name
  /// [privateEndpointConnections] List of private endpoint connections.
  /// [publicNetworkAccess] This determines if traffic is allowed over public network. By default it is enabled.
  /// [resourceGroupName] Name of the resource group within the azure subscription.
  /// [sku] Properties of sku resource
  /// [tags] Resource tags.
  /// [zoneRedundant] Enabling this property creates a Standard Event Hubs Namespace in regions supported availability zones.
  NamespaceArgs({
    this.alternateName,
    this.clusterArmId,
    this.disableLocalAuth,
    this.encryption,
    this.identity,
    this.isAutoInflateEnabled,
    this.kafkaEnabled,
    this.location,
    this.maximumThroughputUnits,
    this.minimumTlsVersion,
    this.namespaceName,
    this.privateEndpointConnections,
    this.publicNetworkAccess,
    required this.resourceGroupName,
    this.sku,
    this.tags,
    this.zoneRedundant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alternateName': ?alternateName,
      'clusterArmId': ?clusterArmId,
      'disableLocalAuth': ?disableLocalAuth,
      'encryption': ?pulumi.Input.mapOptionalInputValue<Encryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<Identity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'isAutoInflateEnabled': ?isAutoInflateEnabled,
      'kafkaEnabled': ?kafkaEnabled,
      'location': ?location,
      'maximumThroughputUnits': ?maximumThroughputUnits,
      'minimumTlsVersion': ?minimumTlsVersion,
      'namespaceName': ?namespaceName,
      'privateEndpointConnections': ?privateEndpointConnections,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'zoneRedundant': ?zoneRedundant,
    };
  }

  factory NamespaceArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceArgs(
      alternateName: map['alternateName'] == null ? null : (map['alternateName'] as String).input(),
      clusterArmId: map['clusterArmId'] == null ? null : (map['clusterArmId'] as String).input(),
      disableLocalAuth: map['disableLocalAuth'] == null ? null : (map['disableLocalAuth'] as bool).input(),
      encryption: map['encryption'] == null ? null : (Encryption.fromMap((map['encryption'] as Map).cast<String, dynamic>())).input(),
      identity: map['identity'] == null ? null : (Identity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      isAutoInflateEnabled: map['isAutoInflateEnabled'] == null ? null : (map['isAutoInflateEnabled'] as bool).input(),
      kafkaEnabled: map['kafkaEnabled'] == null ? null : (map['kafkaEnabled'] as bool).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      maximumThroughputUnits: map['maximumThroughputUnits'] == null ? null : (map['maximumThroughputUnits'] as int).input(),
      minimumTlsVersion: map['minimumTlsVersion'] == null ? null : (map['minimumTlsVersion'] as String).input(),
      namespaceName: map['namespaceName'] == null ? null : (map['namespaceName'] as String).input(),
      privateEndpointConnections: map['privateEndpointConnections'] == null ? null : ((map['privateEndpointConnections'] as List).cast<PrivateEndpointConnectionEventhub>()).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: map['sku'] == null ? null : (Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      zoneRedundant: map['zoneRedundant'] == null ? null : (map['zoneRedundant'] as bool).input(),
    );
  }
}

