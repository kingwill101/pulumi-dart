// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Copy on Expiry Option
class CopyOnExpiryOptionResponse {
  /// Type of the specific object - used for deserializing
  /// Expected value is 'CopyOnExpiryOption'.
  final pulumi.Input<String> objectType;

  /// Creates a new [CopyOnExpiryOptionResponse].
  /// [objectType] Type of the specific object - used for deserializing
  CopyOnExpiryOptionResponse({
    required this.objectType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectType': objectType,
    };
  }

  factory CopyOnExpiryOptionResponse.fromMap(Map<String, dynamic> map) {
    return CopyOnExpiryOptionResponse(
      objectType: (map['objectType'] as String).input(),
    );
  }
}

