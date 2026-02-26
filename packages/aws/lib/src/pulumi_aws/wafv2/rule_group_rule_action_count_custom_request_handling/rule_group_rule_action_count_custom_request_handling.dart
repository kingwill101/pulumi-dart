// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../rule_group_rule_action_count_custom_request_handling_insert_header/rule_group_rule_action_count_custom_request_handling_insert_header.dart';

class RuleGroupRuleActionCountCustomRequestHandling {
  /// The <span pulumi-lang-nodejs="`insertHeader`" pulumi-lang-dotnet="`InsertHeader`" pulumi-lang-go="`insertHeader`" pulumi-lang-python="`insert_header`" pulumi-lang-yaml="`insertHeader`" pulumi-lang-java="`insertHeader`">`insert_header`</span> blocks used to define HTTP headers added to the request. See Custom HTTP Header below for details.
  final List<RuleGroupRuleActionCountCustomRequestHandlingInsertHeader>
      insertHeaders;

  RuleGroupRuleActionCountCustomRequestHandling({
    required this.insertHeaders,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['insertHeaders'] = Input.encodeList<
        RuleGroupRuleActionCountCustomRequestHandlingInsertHeader,
        Map<String, dynamic>>(insertHeaders, (value) => value.toMap());
    return map;
  }

  factory RuleGroupRuleActionCountCustomRequestHandling.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleActionCountCustomRequestHandling(
      insertHeaders: Input.decodeList<
              RuleGroupRuleActionCountCustomRequestHandlingInsertHeader>(
          map['insertHeaders'],
          (value) =>
              RuleGroupRuleActionCountCustomRequestHandlingInsertHeader.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
