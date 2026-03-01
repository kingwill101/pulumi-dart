// ignore_for_file: unused_element, unnecessary_cast


class TopicRuleErrorActionStepFunctions {
  /// The prefix used to generate, along with a UUID, the unique state machine execution name.
  final String? executionNamePrefix;
  /// The ARN of the IAM role that grants access to start execution of the state machine.
  final String roleArn;
  /// The name of the Step Functions state machine whose execution will be started.
  final String stateMachineName;

  /// Creates a new [TopicRuleErrorActionStepFunctions].
  /// [executionNamePrefix] The prefix used to generate, along with a UUID, the unique state machine execution name.
  /// [roleArn] The ARN of the IAM role that grants access to start execution of the state machine.
  /// [stateMachineName] The name of the Step Functions state machine whose execution will be started.
  TopicRuleErrorActionStepFunctions({
    this.executionNamePrefix,
    required this.roleArn,
    required this.stateMachineName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionNamePrefix': ?executionNamePrefix,
      'roleArn': roleArn,
      'stateMachineName': stateMachineName,
    };
  }

  factory TopicRuleErrorActionStepFunctions.fromMap(Map<String, dynamic> map) {
    return TopicRuleErrorActionStepFunctions(
      executionNamePrefix: map['executionNamePrefix'] == null ? null : map['executionNamePrefix'] as String,
      roleArn: map['roleArn'] as String,
      stateMachineName: map['stateMachineName'] as String,
    );
  }
}

