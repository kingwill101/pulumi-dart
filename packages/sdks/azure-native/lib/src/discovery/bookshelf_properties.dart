// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bookshelf_key_vault_properties.dart';

/// Bookshelf properties
class BookshelfProperties {
  /// Whether or not to use a customer managed key when encrypting data at rest
  final pulumi.Input<dynamic>? customerManagedKeys;
  /// The key to use for encrypting data at rest when customer managed keys are enabled. Required if Customer Managed Keys is enabled.
  final pulumi.Input<BookshelfKeyVaultProperties?>? keyVaultProperties;
  /// The Log Analytics Cluster to use for debug logs. This is required when Customer Managed Keys are enabled.
  final pulumi.Input<String?>? logAnalyticsClusterId;
  /// Private Endpoint Subnet ID for private endpoint connections.
  final pulumi.Input<String?>? privateEndpointSubnetId;
  /// Whether or not public network access is allowed for this resource. For security reasons, it is recommended to disable it whenever possible.
  final pulumi.Input<dynamic>? publicNetworkAccess;
  /// Search Subnet ID for search resources.
  final pulumi.Input<String?>? searchSubnetId;
  /// User assigned identity IDs to be used by knowledgebase workloads. The key value must be the resource ID of the identity resource.
  final pulumi.Input<List<String>?>? workloadIdentities;

  /// Creates a new [BookshelfProperties].
  /// [customerManagedKeys] Whether or not to use a customer managed key when encrypting data at rest
  /// [keyVaultProperties] The key to use for encrypting data at rest when customer managed keys are enabled. Required if Customer Managed Keys is enabled.
  /// [logAnalyticsClusterId] The Log Analytics Cluster to use for debug logs. This is required when Customer Managed Keys are enabled.
  /// [privateEndpointSubnetId] Private Endpoint Subnet ID for private endpoint connections.
  /// [publicNetworkAccess] Whether or not public network access is allowed for this resource. For security reasons, it is recommended to disable it whenever possible.
  /// [searchSubnetId] Search Subnet ID for search resources.
  /// [workloadIdentities] User assigned identity IDs to be used by knowledgebase workloads. The key value must be the resource ID of the identity resource.
  const BookshelfProperties({
    this.customerManagedKeys,
    this.keyVaultProperties,
    this.logAnalyticsClusterId,
    this.privateEndpointSubnetId,
    this.publicNetworkAccess,
    this.searchSubnetId,
    this.workloadIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedKeys': ?customerManagedKeys,
      'keyVaultProperties': ?pulumi.Input.mapOptionalInputValue<BookshelfKeyVaultProperties, Map<String, dynamic>>(keyVaultProperties, (value) => value.toMap()),
      'logAnalyticsClusterId': ?logAnalyticsClusterId,
      'privateEndpointSubnetId': ?privateEndpointSubnetId,
      'publicNetworkAccess': ?publicNetworkAccess,
      'searchSubnetId': ?searchSubnetId,
      'workloadIdentities': ?workloadIdentities,
    };
  }

  factory BookshelfProperties.fromMap(Map<String, dynamic> map) {
    return BookshelfProperties(
      customerManagedKeys: (() { final guardedValue = map['customerManagedKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      keyVaultProperties: (() { final guardedValue = map['keyVaultProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BookshelfKeyVaultProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logAnalyticsClusterId: (() { final guardedValue = map['logAnalyticsClusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateEndpointSubnetId: (() { final guardedValue = map['privateEndpointSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      searchSubnetId: (() { final guardedValue = map['searchSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workloadIdentities: (() { final guardedValue = map['workloadIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
