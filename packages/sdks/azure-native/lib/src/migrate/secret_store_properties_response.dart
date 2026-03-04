// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecretStorePropertiesResponse {
  final pulumi.Input<String> inputType;
  final pulumi.Input<String>? secretStoreId;

  /// Creates a new [SecretStorePropertiesResponse].
  /// [inputType] Required.
  /// [secretStoreId] Optional.
  SecretStorePropertiesResponse({required this.inputType, this.secretStoreId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputType': inputType,
      'secretStoreId': ?secretStoreId,
    };
  }

  factory SecretStorePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SecretStorePropertiesResponse(
      inputType: pulumi.Input.fromValue(map['inputType'] as String),
      secretStoreId: (() {
        final guardedValue = map['secretStoreId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
