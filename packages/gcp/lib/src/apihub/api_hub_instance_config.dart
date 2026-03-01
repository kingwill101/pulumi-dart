// ignore_for_file: unused_element, unnecessary_cast

class ApiHubInstanceConfig {
  /// Optional. The Customer Managed Encryption Key (CMEK) used for data encryption.
  /// The CMEK name should follow the format of
  /// `projects/([^/]+)/locations/([^/]+)/keyRings/([^/]+)/cryptoKeys/([^/]+)`,
  /// where the location must match the instance location.
  /// If the CMEK is not provided, a GMEK will be created for the instance.
  final String? cmekKeyName;

  /// Optional. If true, the search will be disabled for the instance. The default value
  /// is false.
  final bool? disableSearch;

  /// Optional. Encryption type for the region. If the encryption type is CMEK, the
  /// cmek_key_name must be provided. If no encryption type is provided,
  /// GMEK will be used.
  /// Possible values:
  /// ENCRYPTION_TYPE_UNSPECIFIED
  /// GMEK
  /// CMEK
  final String? encryptionType;

  /// Optional. The name of the Vertex AI location where the data store is stored.
  final String? vertexLocation;

  /// Creates a new [ApiHubInstanceConfig].
  /// [cmekKeyName] Optional. The Customer Managed Encryption Key (CMEK) used for data encryption.
  /// [disableSearch] Optional. If true, the search will be disabled for the instance. The default value
  /// [encryptionType] Optional. Encryption type for the region. If the encryption type is CMEK, the
  /// [vertexLocation] Optional. The name of the Vertex AI location where the data store is stored.
  ApiHubInstanceConfig({
    this.cmekKeyName,
    this.disableSearch,
    this.encryptionType,
    this.vertexLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cmekKeyName': ?cmekKeyName,
      'disableSearch': ?disableSearch,
      'encryptionType': ?encryptionType,
      'vertexLocation': ?vertexLocation,
    };
  }

  factory ApiHubInstanceConfig.fromMap(Map<String, dynamic> map) {
    return ApiHubInstanceConfig(
      cmekKeyName: map['cmekKeyName'] == null
          ? null
          : map['cmekKeyName'] as String,
      disableSearch: map['disableSearch'] == null
          ? null
          : map['disableSearch'] as bool,
      encryptionType: map['encryptionType'] == null
          ? null
          : map['encryptionType'] as String,
      vertexLocation: map['vertexLocation'] == null
          ? null
          : map['vertexLocation'] as String,
    );
  }
}
