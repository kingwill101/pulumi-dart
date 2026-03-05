// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of TCPFlagField
class TCPFlagFieldResponse {
  /// Property flags
  final pulumi.Input<List<String>>? flags;
  /// Property masks
  final pulumi.Input<List<String>>? masks;

  /// Creates a new [TCPFlagFieldResponse].
  /// [flags] Property flags
  /// [masks] Property masks
  TCPFlagFieldResponse({
    this.flags,
    this.masks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flags': ?flags,
      'masks': ?masks,
    };
  }

  factory TCPFlagFieldResponse.fromMap(Map<String, dynamic> map) {
    return TCPFlagFieldResponse(
      flags: (() { final guardedValue = map['flags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      masks: (() { final guardedValue = map['masks']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

