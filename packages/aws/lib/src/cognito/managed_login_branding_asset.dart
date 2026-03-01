// ignore_for_file: unused_element, unnecessary_cast

class ManagedLoginBrandingAsset {
  /// Image file, in Base64-encoded binary.
  final String? bytes;

  /// Category that the image corresponds to. See [AWS documentation](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AssetType.html#CognitoUserPools-Type-AssetType-Category) for valid values.
  final String category;

  /// Display-mode target of the asset. Valid values: `LIGHT`, `DARK`, `DYNAMIC`.
  final String colorMode;
  final String extension;

  /// Asset ID.
  final String? resourceId;

  /// Creates a new [ManagedLoginBrandingAsset].
  /// [bytes] Image file, in Base64-encoded binary.
  /// [category] Category that the image corresponds to. See [AWS documentation](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AssetType.html#CognitoUserPools-Type-AssetType-Category) for valid values.
  /// [colorMode] Display-mode target of the asset. Valid values: `LIGHT`, `DARK`, `DYNAMIC`.
  /// [extension] Required.
  /// [resourceId] Asset ID.
  ManagedLoginBrandingAsset({
    this.bytes,
    required this.category,
    required this.colorMode,
    required this.extension,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bytes': ?bytes,
      'category': category,
      'colorMode': colorMode,
      'extension': extension,
      'resourceId': ?resourceId,
    };
  }

  factory ManagedLoginBrandingAsset.fromMap(Map<String, dynamic> map) {
    return ManagedLoginBrandingAsset(
      bytes: map['bytes'] == null ? null : map['bytes'] as String,
      category: map['category'] as String,
      colorMode: map['colorMode'] as String,
      extension: map['extension'] as String,
      resourceId: map['resourceId'] == null
          ? null
          : map['resourceId'] as String,
    );
  }
}
