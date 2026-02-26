// ignore_for_file: unused_element, unnecessary_cast

class StateMachineTracingConfiguration {
  /// When set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, AWS X-Ray tracing is enabled. Make sure the State Machine has the correct IAM policies for logging. See the [AWS Step Functions Developer Guide](https://docs.aws.amazon.com/step-functions/latest/dg/xray-iam.html) for details.
  final bool? enabled;

  StateMachineTracingConfiguration({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    return map;
  }

  factory StateMachineTracingConfiguration.fromMap(Map<String, dynamic> map) {
    return StateMachineTracingConfiguration(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
