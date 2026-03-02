// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointCidrOptionsPortRange {
  final pulumi.Input<int> fromPort;
  final pulumi.Input<int> toPort;

  /// Creates a new [EndpointCidrOptionsPortRange].
  /// [fromPort] Required.
  /// [toPort] Required.
  EndpointCidrOptionsPortRange({
    required this.fromPort,
    required this.toPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fromPort': fromPort,
      'toPort': toPort,
    };
  }

  factory EndpointCidrOptionsPortRange.fromMap(Map<String, dynamic> map) {
    return EndpointCidrOptionsPortRange(
      fromPort: (map['fromPort'] as int).input(),
      toPort: (map['toPort'] as int).input(),
    );
  }
}

