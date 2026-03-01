// ignore_for_file: unused_element, unnecessary_cast


/// The settings for the Cosmos DB database backing the service.
class ServiceCosmosDbConfigurationInfo {
  /// The multi-tenant application id used to enable CMK access for services in a data sovereign region.
  final String? crossTenantCmkApplicationId;
  /// The URI of the customer-managed key for the backing database.
  final String? keyVaultKeyUri;
  /// The provisioned throughput for the backing database.
  final int? offerThroughput;

  /// Creates a new [ServiceCosmosDbConfigurationInfo].
  /// [crossTenantCmkApplicationId] The multi-tenant application id used to enable CMK access for services in a data sovereign region.
  /// [keyVaultKeyUri] The URI of the customer-managed key for the backing database.
  /// [offerThroughput] The provisioned throughput for the backing database.
  ServiceCosmosDbConfigurationInfo({
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
      crossTenantCmkApplicationId: map['crossTenantCmkApplicationId'] == null ? null : map['crossTenantCmkApplicationId'] as String,
      keyVaultKeyUri: map['keyVaultKeyUri'] == null ? null : map['keyVaultKeyUri'] as String,
      offerThroughput: map['offerThroughput'] == null ? null : map['offerThroughput'] as int,
    );
  }
}

