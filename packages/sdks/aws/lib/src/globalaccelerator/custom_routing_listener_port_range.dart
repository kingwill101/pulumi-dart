// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomRoutingListenerPortRange {
  /// The first port in the range of ports, inclusive.
  final pulumi.Input<int>? fromPort;
  /// The last port in the range of ports, inclusive.
  final pulumi.Input<int>? toPort;

  /// Creates a new [CustomRoutingListenerPortRange].
  /// [fromPort] The first port in the range of ports, inclusive.
  /// [toPort] The last port in the range of ports, inclusive.
  CustomRoutingListenerPortRange({
    this.fromPort,
    this.toPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fromPort': ?fromPort,
      'toPort': ?toPort,
    };
  }

  factory CustomRoutingListenerPortRange.fromMap(Map<String, dynamic> map) {
    return CustomRoutingListenerPortRange(
      fromPort: map['fromPort'] == null ? null : ((map['fromPort'] as int).input()).input(),
      toPort: map['toPort'] == null ? null : ((map['toPort'] as int).input()).input(),
    );
  }
}

