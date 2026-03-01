// ignore_for_file: unused_element, unnecessary_cast


/// Config of the AgriService resource instance.
class AgriServiceConfigResponse {
  /// App service resource Id.
  final String appServiceResourceId;
  /// Cosmos Db resource Id.
  final String cosmosDbResourceId;
  /// Instance URI of the AgriService instance.
  final String instanceUri;
  /// Key vault resource Id.
  final String keyVaultResourceId;
  /// Redis cache resource Id.
  final String redisCacheResourceId;
  /// Storage account resource Id.
  final String storageAccountResourceId;
  /// Version of AgriService instance.
  final String version;

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
      appServiceResourceId: map['appServiceResourceId'] as String,
      cosmosDbResourceId: map['cosmosDbResourceId'] as String,
      instanceUri: map['instanceUri'] as String,
      keyVaultResourceId: map['keyVaultResourceId'] as String,
      redisCacheResourceId: map['redisCacheResourceId'] as String,
      storageAccountResourceId: map['storageAccountResourceId'] as String,
      version: map['version'] as String,
    );
  }
}

