// ignore_for_file: unused_element, unnecessary_cast

class CustomRoutingListenerPortRange {
  /// The first port in the range of ports, inclusive.
  final int? fromPort;

  /// The last port in the range of ports, inclusive.
  final int? toPort;

  /// Creates a new [CustomRoutingListenerPortRange].
  /// [fromPort] The first port in the range of ports, inclusive.
  /// [toPort] The last port in the range of ports, inclusive.
  CustomRoutingListenerPortRange({this.fromPort, this.toPort});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'fromPort': ?fromPort, 'toPort': ?toPort};
  }

  factory CustomRoutingListenerPortRange.fromMap(Map<String, dynamic> map) {
    return CustomRoutingListenerPortRange(
      fromPort: map['fromPort'] == null ? null : map['fromPort'] as int,
      toPort: map['toPort'] == null ? null : map['toPort'] as int,
    );
  }
}
