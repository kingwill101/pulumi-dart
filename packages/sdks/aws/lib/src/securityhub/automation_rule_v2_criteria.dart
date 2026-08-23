// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutomationRuleV2Criteria {
  /// JSON-encoded OCSF finding criteria for the rule. See the [AWS API Reference](https://docs.aws.amazon.com/securityhub/1.0/APIReference/API_OcsfFindingFilters.html) for details.
  final pulumi.Input<String> ocsfFindingCriteriaJson;

  /// Creates a new [AutomationRuleV2Criteria].
  /// [ocsfFindingCriteriaJson] JSON-encoded OCSF finding criteria for the rule. See the [AWS API Reference](https://docs.aws.amazon.com/securityhub/1.0/APIReference/API_OcsfFindingFilters.html) for details.
  const AutomationRuleV2Criteria({
    required this.ocsfFindingCriteriaJson,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ocsfFindingCriteriaJson': ocsfFindingCriteriaJson,
    };
  }

  factory AutomationRuleV2Criteria.fromMap(Map<String, dynamic> map) {
    return AutomationRuleV2Criteria(
      ocsfFindingCriteriaJson: pulumi.Input.fromValue(map['ocsfFindingCriteriaJson'] as String),
    );
  }
}
