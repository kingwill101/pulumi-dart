// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreOnlineEvaluationConfigRuleSessionConfig {
  /// Minutes of inactivity after which a session is considered complete. Between 1 and 60.
  final pulumi.Input<int> sessionTimeoutMinutes;

  /// Creates a new [AgentcoreOnlineEvaluationConfigRuleSessionConfig].
  /// [sessionTimeoutMinutes] Minutes of inactivity after which a session is considered complete. Between 1 and 60.
  const AgentcoreOnlineEvaluationConfigRuleSessionConfig({
    required this.sessionTimeoutMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sessionTimeoutMinutes': sessionTimeoutMinutes,
    };
  }

  factory AgentcoreOnlineEvaluationConfigRuleSessionConfig.fromMap(Map<String, dynamic> map) {
    return AgentcoreOnlineEvaluationConfigRuleSessionConfig(
      sessionTimeoutMinutes: pulumi.Input.fromValue(map['sessionTimeoutMinutes'] as int),
    );
  }
}
