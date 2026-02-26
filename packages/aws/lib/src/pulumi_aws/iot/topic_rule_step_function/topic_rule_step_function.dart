// ignore_for_file: unused_element, unnecessary_cast

class TopicRuleStepFunction {
  /// The prefix used to generate, along with a UUID, the unique state machine execution name.
  final String? executionNamePrefix;

  /// The ARN of the IAM role that grants access to start execution of the state machine.
  final String roleArn;

  /// The name of the Step Functions state machine whose execution will be started.
  final String stateMachineName;

  TopicRuleStepFunction({
    this.executionNamePrefix,
    required this.roleArn,
    required this.stateMachineName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final executionNamePrefixValue = executionNamePrefix;
    if (executionNamePrefixValue != null) {
      map['executionNamePrefix'] = executionNamePrefixValue;
    }
    map['roleArn'] = roleArn;
    map['stateMachineName'] = stateMachineName;
    return map;
  }

  factory TopicRuleStepFunction.fromMap(Map<String, dynamic> map) {
    return TopicRuleStepFunction(
      executionNamePrefix: map['executionNamePrefix'] == null
          ? null
          : map['executionNamePrefix'] as String,
      roleArn: map['roleArn'] as String,
      stateMachineName: map['stateMachineName'] as String,
    );
  }
}
