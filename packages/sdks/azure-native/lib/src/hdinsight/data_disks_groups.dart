// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The data disks groups for the role.
class DataDisksGroups {
  /// The number of disks per node.
  final pulumi.Input<int?>? disksPerNode;

  /// Creates a new [DataDisksGroups].
  /// [disksPerNode] The number of disks per node.
  const DataDisksGroups({
    this.disksPerNode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disksPerNode': ?disksPerNode,
    };
  }

  factory DataDisksGroups.fromMap(Map<String, dynamic> map) {
    return DataDisksGroups(
      disksPerNode: (() { final guardedValue = map['disksPerNode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
