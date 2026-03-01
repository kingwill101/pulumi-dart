// ignore_for_file: unused_element, unnecessary_cast

import 'waf_rule_shared_actions_response.dart';

class WafRuleSharedActions {
  final WafRuleSharedActionsResponse? response;

  /// Creates a new [WafRuleSharedActions].
  /// [response] Optional.
  WafRuleSharedActions({
    this.response,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'response': ?response == null ? null : response!.toMap(),
    };
  }

  factory WafRuleSharedActions.fromMap(Map<String, dynamic> map) {
    return WafRuleSharedActions(
      response: map['response'] == null ? null : WafRuleSharedActionsResponse.fromMap((map['response'] as Map).cast<String, dynamic>()),
    );
  }
}

