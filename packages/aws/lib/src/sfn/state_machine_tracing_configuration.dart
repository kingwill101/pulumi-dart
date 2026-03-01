// ignore_for_file: unused_element, unnecessary_cast

class StateMachineTracingConfiguration {
  /// When set to `true`, AWS X-Ray tracing is enabled. Make sure the State Machine has the correct IAM policies for logging. See the [AWS Step Functions Developer Guide](https://docs.aws.amazon.com/step-functions/latest/dg/xray-iam.html) for details.
  final bool? enabled;

  /// Creates a new [StateMachineTracingConfiguration].
  /// [enabled] When set to `true`, AWS X-Ray tracing is enabled. Make sure the State Machine has the correct IAM policies for logging. See the [AWS Step Functions Developer Guide](https://docs.aws.amazon.com/step-functions/latest/dg/xray-iam.html) for details.
  StateMachineTracingConfiguration({this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled};
  }

  factory StateMachineTracingConfiguration.fromMap(Map<String, dynamic> map) {
    return StateMachineTracingConfiguration(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
