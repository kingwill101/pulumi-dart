// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointLoadBalancerOptionsPortRange {
  final pulumi.Input<int> fromPort;
  final pulumi.Input<int> toPort;

  /// Creates a new [EndpointLoadBalancerOptionsPortRange].
  /// [fromPort] Required.
  /// [toPort] Required.
  const EndpointLoadBalancerOptionsPortRange({
    required this.fromPort,
    required this.toPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fromPort': fromPort,
      'toPort': toPort,
    };
  }

  factory EndpointLoadBalancerOptionsPortRange.fromMap(Map<String, dynamic> map) {
    return EndpointLoadBalancerOptionsPortRange(
      fromPort: pulumi.Input.fromValue((map['fromPort'] as num).toInt()),
      toPort: pulumi.Input.fromValue((map['toPort'] as num).toInt()),
    );
  }
}
