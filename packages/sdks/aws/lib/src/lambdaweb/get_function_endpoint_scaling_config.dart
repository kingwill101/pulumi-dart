// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFunctionEndpointScalingConfig {
  /// Maximum number of concurrent execution environments.
  final pulumi.Input<int> maxEnvironments;

  /// Creates a new [GetFunctionEndpointScalingConfig].
  /// [maxEnvironments] Maximum number of concurrent execution environments.
  const GetFunctionEndpointScalingConfig({
    required this.maxEnvironments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxEnvironments': maxEnvironments,
    };
  }

  factory GetFunctionEndpointScalingConfig.fromMap(Map<String, dynamic> map) {
    return GetFunctionEndpointScalingConfig(
      maxEnvironments: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maxEnvironments'])),
    );
  }
}
