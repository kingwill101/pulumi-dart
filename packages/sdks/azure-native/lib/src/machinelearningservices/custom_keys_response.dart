// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Custom Keys credential object
class CustomKeysResponse {
  final pulumi.Input<Map<String, String>>? keys;

  /// Creates a new [CustomKeysResponse].
  /// [keys] Optional.
  CustomKeysResponse({this.keys});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'keys': ?keys};
  }

  factory CustomKeysResponse.fromMap(Map<String, dynamic> map) {
    return CustomKeysResponse(
      keys: (() {
        final guardedValue = map['keys'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
