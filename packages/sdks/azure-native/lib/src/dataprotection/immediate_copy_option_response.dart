// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Immediate copy Option
class ImmediateCopyOptionResponse {
  /// Type of the specific object - used for deserializing
  /// Expected value is 'ImmediateCopyOption'.
  final pulumi.Input<String> objectType;

  /// Creates a new [ImmediateCopyOptionResponse].
  /// [objectType] Type of the specific object - used for deserializing
  const ImmediateCopyOptionResponse({
    required this.objectType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectType': objectType,
    };
  }

  factory ImmediateCopyOptionResponse.fromMap(Map<String, dynamic> map) {
    return ImmediateCopyOptionResponse(
      objectType: pulumi.Input.fromValue(map['objectType'] as String),
    );
  }
}
