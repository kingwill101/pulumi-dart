// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_action_count_custom_request_handling_insert_header.dart';

class RuleGroupRuleActionCountCustomRequestHandling {
  /// The `insert_header` blocks used to define HTTP headers added to the request. See Custom HTTP Header below for details.
  final List<RuleGroupRuleActionCountCustomRequestHandlingInsertHeader>
      insertHeaders;

  /// Creates a new [RuleGroupRuleActionCountCustomRequestHandling].
  /// [insertHeaders] The `insert_header` blocks used to define HTTP headers added to the request. See Custom HTTP Header below for details.
  RuleGroupRuleActionCountCustomRequestHandling({
    required this.insertHeaders,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['insertHeaders'] = pulumi.Input.encodeList<
        RuleGroupRuleActionCountCustomRequestHandlingInsertHeader,
        Map<String, dynamic>>(insertHeaders, (value) => value.toMap());
    return map;
  }

  factory RuleGroupRuleActionCountCustomRequestHandling.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleActionCountCustomRequestHandling(
      insertHeaders: pulumi.Input.decodeList<
              RuleGroupRuleActionCountCustomRequestHandlingInsertHeader>(
          map['insertHeaders'],
          (value) =>
              RuleGroupRuleActionCountCustomRequestHandlingInsertHeader.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
