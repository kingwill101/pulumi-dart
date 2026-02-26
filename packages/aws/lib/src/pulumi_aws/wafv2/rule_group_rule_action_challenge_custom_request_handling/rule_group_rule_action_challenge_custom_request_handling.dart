// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../rule_group_rule_action_challenge_custom_request_handling_insert_header/rule_group_rule_action_challenge_custom_request_handling_insert_header.dart';

class RuleGroupRuleActionChallengeCustomRequestHandling {
  /// The <span pulumi-lang-nodejs="`insertHeader`" pulumi-lang-dotnet="`InsertHeader`" pulumi-lang-go="`insertHeader`" pulumi-lang-python="`insert_header`" pulumi-lang-yaml="`insertHeader`" pulumi-lang-java="`insertHeader`">`insert_header`</span> blocks used to define HTTP headers added to the request. See Custom HTTP Header below for details.
  final List<RuleGroupRuleActionChallengeCustomRequestHandlingInsertHeader>
      insertHeaders;

  RuleGroupRuleActionChallengeCustomRequestHandling({
    required this.insertHeaders,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['insertHeaders'] = Input.encodeList<
        RuleGroupRuleActionChallengeCustomRequestHandlingInsertHeader,
        Map<String, dynamic>>(insertHeaders, (value) => value.toMap());
    return map;
  }

  factory RuleGroupRuleActionChallengeCustomRequestHandling.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleActionChallengeCustomRequestHandling(
      insertHeaders: Input.decodeList<
              RuleGroupRuleActionChallengeCustomRequestHandlingInsertHeader>(
          map['insertHeaders'],
          (value) =>
              RuleGroupRuleActionChallengeCustomRequestHandlingInsertHeader
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
