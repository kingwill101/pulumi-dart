// ignore_for_file: unused_element, unnecessary_cast

class EndpointNetworkInterfaceOptionsPortRange {
  final int fromPort;
  final int toPort;

  /// Creates a new [EndpointNetworkInterfaceOptionsPortRange].
  /// [fromPort] Required.
  /// [toPort] Required.
  EndpointNetworkInterfaceOptionsPortRange({
    required this.fromPort,
    required this.toPort,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fromPort'] = fromPort;
    map['toPort'] = toPort;
    return map;
  }

  factory EndpointNetworkInterfaceOptionsPortRange.fromMap(
      Map<String, dynamic> map) {
    return EndpointNetworkInterfaceOptionsPortRange(
      fromPort: map['fromPort'] as int,
      toPort: map['toPort'] as int,
    );
  }
}
