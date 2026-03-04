// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedLoginBrandingAsset {
  /// Image file, in Base64-encoded binary.
  final pulumi.Input<String>? bytes;

  /// Category that the image corresponds to. See [AWS documentation](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AssetType.html#CognitoUserPools-Type-AssetType-Category) for valid values.
  final pulumi.Input<String> category;

  /// Display-mode target of the asset. Valid values: `LIGHT`, `DARK`, `DYNAMIC`.
  final pulumi.Input<String> colorMode;
  final pulumi.Input<String> extension;

  /// Asset ID.
  final pulumi.Input<String>? resourceId;

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
      bytes: (() {
        final guardedValue = map['bytes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      category: pulumi.Input.fromValue(map['category'] as String),
      colorMode: pulumi.Input.fromValue(map['colorMode'] as String),
      extension: pulumi.Input.fromValue(map['extension'] as String),
      resourceId: (() {
        final guardedValue = map['resourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
