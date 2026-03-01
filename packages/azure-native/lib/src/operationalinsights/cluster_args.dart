// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_sku.dart';
import 'key_vault_properties.dart';
import 'managed_service_identity.dart';

/// {@template pulumi_operationalinsights_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_operationalinsights_cluster_args_doc}
class ClusterArgs {
  /// The cluster's billing type.
  final pulumi.Input<String>? billingType;
  /// The name of the Log Analytics cluster.
  final pulumi.Input<String>? clusterName;
  /// Resource's identity.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// Sets whether the cluster will support availability zones. This can be set as true only in regions where Azure Data Explorer support Availability Zones. This Property can not be modified after cluster creation. Default value is 'true' if region supports Availability Zones.
  final pulumi.Input<bool>? isAvailabilityZonesEnabled;
  /// Configures whether cluster will use double encryption. This Property can not be modified after cluster creation. Default value is 'true'
  final pulumi.Input<bool>? isDoubleEncryptionEnabled;
  /// The associated key properties.
  final pulumi.Input<KeyVaultProperties>? keyVaultProperties;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The sku properties.
  final pulumi.Input<ClusterSku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ClusterArgs].
  /// [billingType] The cluster's billing type.
  /// [clusterName] The name of the Log Analytics cluster.
  /// [identity] Resource's identity.
  /// [isAvailabilityZonesEnabled] Sets whether the cluster will support availability zones. This can be set as true only in regions where Azure Data Explorer support Availability Zones. This Property can not be modified after cluster creation. Default value is 'true' if region supports Availability Zones.
  /// [isDoubleEncryptionEnabled] Configures whether cluster will use double encryption. This Property can not be modified after cluster creation. Default value is 'true'
  /// [keyVaultProperties] The associated key properties.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] The sku properties.
  /// [tags] Resource tags.
  ClusterArgs({
    String? billingType,
    String? clusterName,
    ManagedServiceIdentity? identity,
    bool? isAvailabilityZonesEnabled,
    bool? isDoubleEncryptionEnabled,
    KeyVaultProperties? keyVaultProperties,
    String? location,
    required String resourceGroupName,
    ClusterSku? sku,
    Map<String, String>? tags,
  }) :
      billingType = pulumi.Input.asOptionalInput<String>(billingType),
      clusterName = pulumi.Input.asOptionalInput<String>(clusterName),
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      isAvailabilityZonesEnabled = pulumi.Input.asOptionalInput<bool>(isAvailabilityZonesEnabled),
      isDoubleEncryptionEnabled = pulumi.Input.asOptionalInput<bool>(isDoubleEncryptionEnabled),
      keyVaultProperties = pulumi.Input.asOptionalInput<KeyVaultProperties>(keyVaultProperties),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<ClusterSku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingType': ?billingType,
      'clusterName': ?clusterName,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'isAvailabilityZonesEnabled': ?isAvailabilityZonesEnabled,
      'isDoubleEncryptionEnabled': ?isDoubleEncryptionEnabled,
      'keyVaultProperties': ?pulumi.Input.mapOptionalInputValue<KeyVaultProperties, Map<String, dynamic>>(keyVaultProperties, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<ClusterSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      billingType: map['billingType'] == null ? null : map['billingType'] as String,
      clusterName: map['clusterName'] == null ? null : map['clusterName'] as String,
      identity: map['identity'] == null ? null : ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      isAvailabilityZonesEnabled: map['isAvailabilityZonesEnabled'] == null ? null : map['isAvailabilityZonesEnabled'] as bool,
      isDoubleEncryptionEnabled: map['isDoubleEncryptionEnabled'] == null ? null : map['isDoubleEncryptionEnabled'] as bool,
      keyVaultProperties: map['keyVaultProperties'] == null ? null : KeyVaultProperties.fromMap((map['keyVaultProperties'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sku: map['sku'] == null ? null : ClusterSku.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

