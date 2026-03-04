// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Copy on Expiry Option
class CopyOnExpiryOption {
  /// Type of the specific object - used for deserializing
  /// Expected value is 'CopyOnExpiryOption'.
  final pulumi.Input<String> objectType;

  /// Creates a new [CopyOnExpiryOption].
  /// [objectType] Type of the specific object - used for deserializing
  CopyOnExpiryOption({required this.objectType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'objectType': objectType};
  }

  factory CopyOnExpiryOption.fromMap(Map<String, dynamic> map) {
    return CopyOnExpiryOption(
      objectType: pulumi.Input.fromValue(map['objectType'] as String),
    );
  }
}
