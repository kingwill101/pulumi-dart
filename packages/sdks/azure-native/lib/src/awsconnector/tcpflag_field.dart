// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of TCPFlagField
class TCPFlagField {
  /// Property flags
  final pulumi.Input<List<String>?>? flags;
  /// Property masks
  final pulumi.Input<List<String>?>? masks;

  /// Creates a new [TCPFlagField].
  /// [flags] Property flags
  /// [masks] Property masks
  const TCPFlagField({
    this.flags,
    this.masks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flags': ?flags,
      'masks': ?masks,
    };
  }

  factory TCPFlagField.fromMap(Map<String, dynamic> map) {
    return TCPFlagField(
      flags: (() { final guardedValue = map['flags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      masks: (() { final guardedValue = map['masks']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
