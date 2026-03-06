// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The settings for the Cosmos DB database backing the service.
class ServiceCosmosDbConfigurationInfo {
  /// The multi-tenant application id used to enable CMK access for services in a data sovereign region.
  final pulumi.Input<String>? crossTenantCmkApplicationId;
  /// The URI of the customer-managed key for the backing database.
  final pulumi.Input<String>? keyVaultKeyUri;
  /// The provisioned throughput for the backing database.
  final pulumi.Input<int>? offerThroughput;

  /// Creates a new [ServiceCosmosDbConfigurationInfo].
  /// [crossTenantCmkApplicationId] The multi-tenant application id used to enable CMK access for services in a data sovereign region.
  /// [keyVaultKeyUri] The URI of the customer-managed key for the backing database.
  /// [offerThroughput] The provisioned throughput for the backing database.
  const ServiceCosmosDbConfigurationInfo({
    this.crossTenantCmkApplicationId,
    this.keyVaultKeyUri,
    this.offerThroughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossTenantCmkApplicationId': ?crossTenantCmkApplicationId,
      'keyVaultKeyUri': ?keyVaultKeyUri,
      'offerThroughput': ?offerThroughput,
    };
  }

  factory ServiceCosmosDbConfigurationInfo.fromMap(Map<String, dynamic> map) {
    return ServiceCosmosDbConfigurationInfo(
      crossTenantCmkApplicationId: (() { final guardedValue = map['crossTenantCmkApplicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultKeyUri: (() { final guardedValue = map['keyVaultKeyUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      offerThroughput: (() { final guardedValue = map['offerThroughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

