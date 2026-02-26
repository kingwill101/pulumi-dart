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

  /// Optional. Encryption type for the region. If the encryption type is CMEK, the<span pulumi-lang-nodejs="
  /// cmekKeyName " pulumi-lang-dotnet="
  /// CmekKeyName " pulumi-lang-go="
  /// cmekKeyName " pulumi-lang-python="
  /// cmek_key_name " pulumi-lang-yaml="
  /// cmekKeyName " pulumi-lang-java="
  /// cmekKeyName ">
  /// cmek_key_name </span>must be provided. If no encryption type is provided,
  /// GMEK will be used.
  /// Possible values:
  /// ENCRYPTION_TYPE_UNSPECIFIED
  /// GMEK
  /// CMEK
  final String? encryptionType;

  /// Optional. The name of the Vertex AI location where the data store is stored.
  final String? vertexLocation;

  ApiHubInstanceConfig({
    this.cmekKeyName,
    this.disableSearch,
    this.encryptionType,
    this.vertexLocation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cmekKeyNameValue = cmekKeyName;
    if (cmekKeyNameValue != null) {
      map['cmekKeyName'] = cmekKeyNameValue;
    }
    final disableSearchValue = disableSearch;
    if (disableSearchValue != null) {
      map['disableSearch'] = disableSearchValue;
    }
    final encryptionTypeValue = encryptionType;
    if (encryptionTypeValue != null) {
      map['encryptionType'] = encryptionTypeValue;
    }
    final vertexLocationValue = vertexLocation;
    if (vertexLocationValue != null) {
      map['vertexLocation'] = vertexLocationValue;
    }
    return map;
  }

  factory ApiHubInstanceConfig.fromMap(Map<String, dynamic> map) {
    return ApiHubInstanceConfig(
      cmekKeyName:
          map['cmekKeyName'] == null ? null : map['cmekKeyName'] as String,
      disableSearch:
          map['disableSearch'] == null ? null : map['disableSearch'] as bool,
      encryptionType: map['encryptionType'] == null
          ? null
          : map['encryptionType'] as String,
      vertexLocation: map['vertexLocation'] == null
          ? null
          : map['vertexLocation'] as String,
    );
  }
}
