// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contentwarehouse_v1_action_response.dart';

/// Represents the rule for a content warehouse trigger.
class GoogleCloudContentwarehouseV1RuleResponse {
  /// List of actions that are executed when the rule is satisfied.
  final List<GoogleCloudContentwarehouseV1ActionResponse> actions;

  /// Represents the conditional expression to be evaluated. Expression should evaluate to a boolean result. When the condition is true actions are executed. Example: user_role = "hsbc_role_1" AND doc.salary > 20000
  final String condition;

  /// Short description of the rule and its context.
  final String description;

  /// ID of the rule. It has to be unique across all the examples. This is managed internally.
  final String ruleId;

  /// Identifies the trigger type for running the policy.
  final String triggerType;

  /// Creates a new [GoogleCloudContentwarehouseV1RuleResponse].
  /// [actions] List of actions that are executed when the rule is satisfied.
  /// [condition] Represents the conditional expression to be evaluated. Expression should evaluate to a boolean result. When the condition is true actions are executed. Example: user_role = "hsbc_role_1" AND doc.salary > 20000
  /// [description] Short description of the rule and its context.
  /// [ruleId] ID of the rule. It has to be unique across all the examples. This is managed internally.
  /// [triggerType] Identifies the trigger type for running the policy.
  GoogleCloudContentwarehouseV1RuleResponse({
    required this.actions,
    required this.condition,
    required this.description,
    required this.ruleId,
    required this.triggerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions':
          pulumi.Input.encodeList<
            GoogleCloudContentwarehouseV1ActionResponse,
            Map<String, dynamic>
          >(actions, (value) => value.toMap()),
      'condition': condition,
      'description': description,
      'ruleId': ruleId,
      'triggerType': triggerType,
    };
  }

  factory GoogleCloudContentwarehouseV1RuleResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudContentwarehouseV1RuleResponse(
      actions:
          pulumi.Input.decodeList<GoogleCloudContentwarehouseV1ActionResponse>(
            map['actions'],
            (value) => GoogleCloudContentwarehouseV1ActionResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      condition: map['condition'] as String,
      description: map['description'] as String,
      ruleId: map['ruleId'] as String,
      triggerType: map['triggerType'] as String,
    );
  }
}
