// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The settings for the Cosmos DB database backing the service.
class ServiceCosmosDbConfigurationInfoResponse {
  /// The URI of the customer-managed key for the backing database.
  final pulumi.Input<String>? keyVaultKeyUri;
  /// The provisioned throughput for the backing database.
  final pulumi.Input<double>? offerThroughput;

  /// Creates a new [ServiceCosmosDbConfigurationInfoResponse].
  /// [keyVaultKeyUri] The URI of the customer-managed key for the backing database.
  /// [offerThroughput] The provisioned throughput for the backing database.
  ServiceCosmosDbConfigurationInfoResponse({
    this.keyVaultKeyUri,
    this.offerThroughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultKeyUri': ?keyVaultKeyUri,
      'offerThroughput': ?offerThroughput,
    };
  }

  factory ServiceCosmosDbConfigurationInfoResponse.fromMap(Map<String, dynamic> map) {
    return ServiceCosmosDbConfigurationInfoResponse(
      keyVaultKeyUri: map['keyVaultKeyUri'] == null ? null : (map['keyVaultKeyUri'] as String).input(),
      offerThroughput: map['offerThroughput'] == null ? null : (map['offerThroughput'] as double).input(),
    );
  }
}

