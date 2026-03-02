// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecretStorePropertiesResponse {
  final pulumi.Input<String> inputType;
  final pulumi.Input<String>? secretStoreId;

  /// Creates a new [SecretStorePropertiesResponse].
  /// [inputType] Required.
  /// [secretStoreId] Optional.
  SecretStorePropertiesResponse({
    required this.inputType,
    this.secretStoreId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputType': inputType,
      'secretStoreId': ?secretStoreId,
    };
  }

  factory SecretStorePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SecretStorePropertiesResponse(
      inputType: (map['inputType'] as String).input(),
      secretStoreId: map['secretStoreId'] == null ? null : (map['secretStoreId'] as String).input(),
    );
  }
}

