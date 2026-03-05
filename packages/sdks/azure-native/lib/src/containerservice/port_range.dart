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
      portEnd: (() { final guardedValue = map['portEnd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      portStart: (() { final guardedValue = map['portStart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

