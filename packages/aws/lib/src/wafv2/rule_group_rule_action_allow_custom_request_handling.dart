// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_action_allow_custom_request_handling_insert_header.dart';

class RuleGroupRuleActionAllowCustomRequestHandling {
  /// The `insert_header` blocks used to define HTTP headers added to the request. See Custom HTTP Header below for details.
  final List<RuleGroupRuleActionAllowCustomRequestHandlingInsertHeader> insertHeaders;

  /// Creates a new [RuleGroupRuleActionAllowCustomRequestHandling].
  /// [insertHeaders] The `insert_header` blocks used to define HTTP headers added to the request. See Custom HTTP Header below for details.
  RuleGroupRuleActionAllowCustomRequestHandling({
    required this.insertHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'insertHeaders': pulumi.Input.encodeList<RuleGroupRuleActionAllowCustomRequestHandlingInsertHeader, Map<String, dynamic>>(insertHeaders, (value) => value.toMap()),
    };
  }

  factory RuleGroupRuleActionAllowCustomRequestHandling.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleActionAllowCustomRequestHandling(
      insertHeaders: pulumi.Input.decodeList<RuleGroupRuleActionAllowCustomRequestHandlingInsertHeader>(map['insertHeaders'], (value) => RuleGroupRuleActionAllowCustomRequestHandlingInsertHeader.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

