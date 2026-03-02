// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Custom Keys credential object
class CustomKeys {
  final pulumi.Input<Map<String, String>>? keys;

  /// Creates a new [CustomKeys].
  /// [keys] Optional.
  CustomKeys({
    this.keys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keys': ?keys,
    };
  }

  factory CustomKeys.fromMap(Map<String, dynamic> map) {
    return CustomKeys(
      keys: map['keys'] == null ? null : ((map['keys']! as Map).cast<String, String>()).input(),
    );
  }
}

