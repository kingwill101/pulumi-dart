// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption.dart';
import 'identity.dart';
import 'private_endpoint_connection_servicebus.dart';
import 'sbsku.dart';

/// {@template pulumi_servicebus_namespace_args_doc}
/// The set of arguments for Namespace.
/// {@endtemplate}
/// {@macro pulumi_servicebus_namespace_args_doc}
class NamespaceArgs {
  /// Alternate name for namespace
  final pulumi.Input<String>? alternateName;
  /// This property disables SAS authentication for the Service Bus namespace.
  final pulumi.Input<bool>? disableLocalAuth;
  /// Properties of BYOK Encryption description
  final pulumi.Input<Encryption>? encryption;
  /// Properties of BYOK Identity description
  final pulumi.Input<Identity>? identity;
  /// The Geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The minimum TLS version for the cluster to support, e.g. '1.2'
  final pulumi.Input<String>? minimumTlsVersion;
  /// The namespace name.
  final pulumi.Input<String>? namespaceName;
  /// The number of partitions of a Service Bus namespace. This property is only applicable to Premium SKU namespaces. The default value is 1 and possible values are 1, 2 and 4
  final pulumi.Input<int>? premiumMessagingPartitions;
  /// List of private endpoint connections.
  /// These are also available as standalone resources. Do not mix inline and standalone resource as they will conflict with each other, leading to resources deletion.
  final pulumi.Input<List<PrivateEndpointConnectionServicebus>>? privateEndpointConnections;
  /// This determines if traffic is allowed over public network. By default it is enabled.
  final pulumi.Input<String>? publicNetworkAccess;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Properties of SKU
  final pulumi.Input<SBSku>? sku;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;
  /// This property reflects if zone redundancy has been enabled for namespaces in regions that support availability zones.
  final pulumi.Input<bool>? zoneRedundant;

  /// Creates a new [NamespaceArgs].
  /// [alternateName] Alternate name for namespace
  /// [disableLocalAuth] This property disables SAS authentication for the Service Bus namespace.
  /// [encryption] Properties of BYOK Encryption description
  /// [identity] Properties of BYOK Identity description
  /// [location] The Geo-location where the resource lives
  /// [minimumTlsVersion] The minimum TLS version for the cluster to support, e.g. '1.2'
  /// [namespaceName] The namespace name.
  /// [premiumMessagingPartitions] The number of partitions of a Service Bus namespace. This property is only applicable to Premium SKU namespaces. The default value is 1 and possible values are 1, 2 and 4
  /// [privateEndpointConnections] List of private endpoint connections.
  /// [publicNetworkAccess] This determines if traffic is allowed over public network. By default it is enabled.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] Properties of SKU
  /// [tags] Resource tags
  /// [zoneRedundant] This property reflects if zone redundancy has been enabled for namespaces in regions that support availability zones.
  NamespaceArgs({
    String? alternateName,
    bool? disableLocalAuth,
    Encryption? encryption,
    Identity? identity,
    String? location,
    String? minimumTlsVersion,
    String? namespaceName,
    int? premiumMessagingPartitions,
    List<PrivateEndpointConnectionServicebus>? privateEndpointConnections,
    String? publicNetworkAccess,
    required String resourceGroupName,
    SBSku? sku,
    Map<String, String>? tags,
    bool? zoneRedundant,
  }) :
      alternateName = pulumi.Input.asOptionalInput<String>(alternateName),
      disableLocalAuth = pulumi.Input.asOptionalInput<bool>(disableLocalAuth),
      encryption = pulumi.Input.asOptionalInput<Encryption>(encryption),
      identity = pulumi.Input.asOptionalInput<Identity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      minimumTlsVersion = pulumi.Input.asOptionalInput<String>(minimumTlsVersion),
      namespaceName = pulumi.Input.asOptionalInput<String>(namespaceName),
      premiumMessagingPartitions = pulumi.Input.asOptionalInput<int>(premiumMessagingPartitions),
      privateEndpointConnections = pulumi.Input.asOptionalInput<List<PrivateEndpointConnectionServicebus>>(privateEndpointConnections),
      publicNetworkAccess = pulumi.Input.asOptionalInput<String>(publicNetworkAccess),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<SBSku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zoneRedundant = pulumi.Input.asOptionalInput<bool>(zoneRedundant);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alternateName': ?alternateName,
      'disableLocalAuth': ?disableLocalAuth,
      'encryption': ?pulumi.Input.mapOptionalInputValue<Encryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<Identity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'minimumTlsVersion': ?minimumTlsVersion,
      'namespaceName': ?namespaceName,
      'premiumMessagingPartitions': ?premiumMessagingPartitions,
      'privateEndpointConnections': ?privateEndpointConnections,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<SBSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'zoneRedundant': ?zoneRedundant,
    };
  }

  factory NamespaceArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceArgs(
      alternateName: map['alternateName'] == null ? null : map['alternateName'] as String,
      disableLocalAuth: map['disableLocalAuth'] == null ? null : map['disableLocalAuth'] as bool,
      encryption: map['encryption'] == null ? null : Encryption.fromMap((map['encryption'] as Map).cast<String, dynamic>()),
      identity: map['identity'] == null ? null : Identity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      minimumTlsVersion: map['minimumTlsVersion'] == null ? null : map['minimumTlsVersion'] as String,
      namespaceName: map['namespaceName'] == null ? null : map['namespaceName'] as String,
      premiumMessagingPartitions: map['premiumMessagingPartitions'] == null ? null : map['premiumMessagingPartitions'] as int,
      privateEndpointConnections: map['privateEndpointConnections'] == null ? null : (map['privateEndpointConnections'] as List).cast<PrivateEndpointConnectionServicebus>(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sku: map['sku'] == null ? null : SBSku.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      zoneRedundant: map['zoneRedundant'] == null ? null : map['zoneRedundant'] as bool,
    );
  }
}

