// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FunctionEndpointScalingConfig {
  /// Maximum number of concurrent execution environments the endpoint may scale to, minimum 2.
  final pulumi.Input<int> maxEnvironments;

  /// Creates a new [FunctionEndpointScalingConfig].
  /// [maxEnvironments] Maximum number of concurrent execution environments the endpoint may scale to, minimum 2.
  const FunctionEndpointScalingConfig({
    required this.maxEnvironments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxEnvironments': maxEnvironments,
    };
  }

  factory FunctionEndpointScalingConfig.fromMap(Map<String, dynamic> map) {
    return FunctionEndpointScalingConfig(
      maxEnvironments: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maxEnvironments'])),
    );
  }
}
