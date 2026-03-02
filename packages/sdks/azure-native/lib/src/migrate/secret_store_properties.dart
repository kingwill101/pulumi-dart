// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecretStoreProperties {
  final pulumi.Input<String>? secretStoreId;

  /// Creates a new [SecretStoreProperties].
  /// [secretStoreId] Optional.
  SecretStoreProperties({
    this.secretStoreId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretStoreId': ?secretStoreId,
    };
  }

  factory SecretStoreProperties.fromMap(Map<String, dynamic> map) {
    return SecretStoreProperties(
      secretStoreId: map['secretStoreId'] == null ? null : (map['secretStoreId']! as String).input(),
    );
  }
}

