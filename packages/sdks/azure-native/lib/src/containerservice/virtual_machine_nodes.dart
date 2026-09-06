// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Current status on a group of nodes of the same vm size.
class VirtualMachineNodes {
  /// Number of nodes.
  final pulumi.Input<int?>? count;
  /// The VM size of the agents used to host this group of nodes.
  final pulumi.Input<String?>? size;

  /// Creates a new [VirtualMachineNodes].
  /// [count] Number of nodes.
  /// [size] The VM size of the agents used to host this group of nodes.
  const VirtualMachineNodes({
    this.count,
    this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'size': ?size,
    };
  }

  factory VirtualMachineNodes.fromMap(Map<String, dynamic> map) {
    return VirtualMachineNodes(
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
