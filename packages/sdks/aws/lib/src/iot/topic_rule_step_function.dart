// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TopicRuleStepFunction {
  /// The prefix used to generate, along with a UUID, the unique state machine execution name.
  final pulumi.Input<String>? executionNamePrefix;
  /// The ARN of the IAM role that grants access to start execution of the state machine.
  final pulumi.Input<String> roleArn;
  /// The name of the Step Functions state machine whose execution will be started.
  final pulumi.Input<String> stateMachineName;

  /// Creates a new [TopicRuleStepFunction].
  /// [executionNamePrefix] The prefix used to generate, along with a UUID, the unique state machine execution name.
  /// [roleArn] The ARN of the IAM role that grants access to start execution of the state machine.
  /// [stateMachineName] The name of the Step Functions state machine whose execution will be started.
  const TopicRuleStepFunction({
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

  factory TopicRuleStepFunction.fromMap(Map<String, dynamic> map) {
    return TopicRuleStepFunction(
      executionNamePrefix: (() { final guardedValue = map['executionNamePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      stateMachineName: pulumi.Input.fromValue(map['stateMachineName'] as String),
    );
  }
}
