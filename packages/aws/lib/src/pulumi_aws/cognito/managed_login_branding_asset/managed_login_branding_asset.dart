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

  ManagedLoginBrandingAsset({
    this.bytes,
    required this.category,
    required this.colorMode,
    required this.extension,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bytesValue = bytes;
    if (bytesValue != null) {
      map['bytes'] = bytesValue;
    }
    map['category'] = category;
    map['colorMode'] = colorMode;
    map['extension'] = extension;
    final resourceIdValue = resourceId;
    if (resourceIdValue != null) {
      map['resourceId'] = resourceIdValue;
    }
    return map;
  }

  factory ManagedLoginBrandingAsset.fromMap(Map<String, dynamic> map) {
    return ManagedLoginBrandingAsset(
      bytes: map['bytes'] == null ? null : map['bytes'] as String,
      category: map['category'] as String,
      colorMode: map['colorMode'] as String,
      extension: map['extension'] as String,
      resourceId:
          map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}
