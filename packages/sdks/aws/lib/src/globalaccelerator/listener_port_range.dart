// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListenerPortRange {
  /// The first port in the range of ports, inclusive.
  final pulumi.Input<int>? fromPort;
  /// The last port in the range of ports, inclusive.
  final pulumi.Input<int>? toPort;

  /// Creates a new [ListenerPortRange].
  /// [fromPort] The first port in the range of ports, inclusive.
  /// [toPort] The last port in the range of ports, inclusive.
  ListenerPortRange({
    this.fromPort,
    this.toPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fromPort': ?fromPort,
      'toPort': ?toPort,
    };
  }

  factory ListenerPortRange.fromMap(Map<String, dynamic> map) {
    return ListenerPortRange(
      fromPort: map['fromPort'] == null ? null : ((map['fromPort'] as int).input()).input(),
      toPort: map['toPort'] == null ? null : ((map['toPort'] as int).input()).input(),
    );
  }
}

