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
  TopicRuleStepFunction({
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
      executionNamePrefix: map['executionNamePrefix'] == null ? null : ((map['executionNamePrefix'] as String).input()).input(),
      roleArn: (map['roleArn'] as String).input(),
      stateMachineName: (map['stateMachineName'] as String).input(),
    );
  }
}

