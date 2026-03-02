// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Immediate copy Option
class ImmediateCopyOption {
  /// Type of the specific object - used for deserializing
  /// Expected value is 'ImmediateCopyOption'.
  final pulumi.Input<String> objectType;

  /// Creates a new [ImmediateCopyOption].
  /// [objectType] Type of the specific object - used for deserializing
  ImmediateCopyOption({
    required this.objectType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectType': objectType,
    };
  }

  factory ImmediateCopyOption.fromMap(Map<String, dynamic> map) {
    return ImmediateCopyOption(
      objectType: (map['objectType'] as String).input(),
    );
  }
}

