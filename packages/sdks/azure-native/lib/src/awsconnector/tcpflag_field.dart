// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of TCPFlagField
class TCPFlagField {
  /// Property flags
  final pulumi.Input<List<String>>? flags;
  /// Property masks
  final pulumi.Input<List<String>>? masks;

  /// Creates a new [TCPFlagField].
  /// [flags] Property flags
  /// [masks] Property masks
  TCPFlagField({
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
      flags: map['flags'] == null ? null : ((map['flags'] as List).cast<String>()).input(),
      masks: map['masks'] == null ? null : ((map['masks'] as List).cast<String>()).input(),
    );
  }
}

