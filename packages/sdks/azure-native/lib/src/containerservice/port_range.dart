// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The port range.
class PortRange {
  /// The maximum port that is included in the range. It should be ranged from 1 to 65535, and be greater than or equal to portStart.
  final pulumi.Input<int>? portEnd;
  /// The minimum port that is included in the range. It should be ranged from 1 to 65535, and be less than or equal to portEnd.
  final pulumi.Input<int>? portStart;
  /// The network protocol of the port.
  final pulumi.Input<String>? protocol;

  /// Creates a new [PortRange].
  /// [portEnd] The maximum port that is included in the range. It should be ranged from 1 to 65535, and be greater than or equal to portStart.
  /// [portStart] The minimum port that is included in the range. It should be ranged from 1 to 65535, and be less than or equal to portEnd.
  /// [protocol] The network protocol of the port.
  PortRange({
    this.portEnd,
    this.portStart,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'portEnd': ?portEnd,
      'portStart': ?portStart,
      'protocol': ?protocol,
    };
  }

  factory PortRange.fromMap(Map<String, dynamic> map) {
    return PortRange(
      portEnd: map['portEnd'] == null ? null : (map['portEnd']! as int).input(),
      portStart: map['portStart'] == null ? null : (map['portStart']! as int).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
    );
  }
}

