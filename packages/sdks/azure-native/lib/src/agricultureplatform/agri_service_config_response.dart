// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Config of the AgriService resource instance.
class AgriServiceConfigResponse {
  /// App service resource Id.
  final pulumi.Input<String> appServiceResourceId;
  /// Cosmos Db resource Id.
  final pulumi.Input<String> cosmosDbResourceId;
  /// Instance URI of the AgriService instance.
  final pulumi.Input<String> instanceUri;
  /// Key vault resource Id.
  final pulumi.Input<String> keyVaultResourceId;
  /// Redis cache resource Id.
  final pulumi.Input<String> redisCacheResourceId;
  /// Storage account resource Id.
  final pulumi.Input<String> storageAccountResourceId;
  /// Version of AgriService instance.
  final pulumi.Input<String> version;

  /// Creates a new [AgriServiceConfigResponse].
  /// [appServiceResourceId] App service resource Id.
  /// [cosmosDbResourceId] Cosmos Db resource Id.
  /// [instanceUri] Instance URI of the AgriService instance.
  /// [keyVaultResourceId] Key vault resource Id.
  /// [redisCacheResourceId] Redis cache resource Id.
  /// [storageAccountResourceId] Storage account resource Id.
  /// [version] Version of AgriService instance.
  AgriServiceConfigResponse({
    required this.appServiceResourceId,
    required this.cosmosDbResourceId,
    required this.instanceUri,
    required this.keyVaultResourceId,
    required this.redisCacheResourceId,
    required this.storageAccountResourceId,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServiceResourceId': appServiceResourceId,
      'cosmosDbResourceId': cosmosDbResourceId,
      'instanceUri': instanceUri,
      'keyVaultResourceId': keyVaultResourceId,
      'redisCacheResourceId': redisCacheResourceId,
      'storageAccountResourceId': storageAccountResourceId,
      'version': version,
    };
  }

  factory AgriServiceConfigResponse.fromMap(Map<String, dynamic> map) {
    return AgriServiceConfigResponse(
      appServiceResourceId: (map['appServiceResourceId'] as String).input(),
      cosmosDbResourceId: (map['cosmosDbResourceId'] as String).input(),
      instanceUri: (map['instanceUri'] as String).input(),
      keyVaultResourceId: (map['keyVaultResourceId'] as String).input(),
      redisCacheResourceId: (map['redisCacheResourceId'] as String).input(),
      storageAccountResourceId: (map['storageAccountResourceId'] as String).input(),
      version: (map['version'] as String).input(),
    );
  }
}

