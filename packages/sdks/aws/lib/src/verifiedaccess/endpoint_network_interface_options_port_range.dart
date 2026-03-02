// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointNetworkInterfaceOptionsPortRange {
  final pulumi.Input<int> fromPort;
  final pulumi.Input<int> toPort;

  /// Creates a new [EndpointNetworkInterfaceOptionsPortRange].
  /// [fromPort] Required.
  /// [toPort] Required.
  EndpointNetworkInterfaceOptionsPortRange({
    required this.fromPort,
    required this.toPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fromPort': fromPort,
      'toPort': toPort,
    };
  }

  factory EndpointNetworkInterfaceOptionsPortRange.fromMap(Map<String, dynamic> map) {
    return EndpointNetworkInterfaceOptionsPortRange(
      fromPort: (map['fromPort'] as int).input(),
      toPort: (map['toPort'] as int).input(),
    );
  }
}

