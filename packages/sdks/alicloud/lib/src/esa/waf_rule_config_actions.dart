// ignore_for_file: unused_element, unnecessary_cast

import 'waf_rule_config_actions_bypass.dart';
import 'waf_rule_config_actions_response.dart';

class WafRuleConfigActions {
  /// The skip configuration specified by the whitelist rule. See `bypass` below.
  final WafRuleConfigActionsBypass? bypass;
  final WafRuleConfigActionsResponse? response;

  /// Creates a new [WafRuleConfigActions].
  /// [bypass] The skip configuration specified by the whitelist rule. See `bypass` below.
  /// [response] Optional.
  WafRuleConfigActions({
    this.bypass,
    this.response,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bypass': ?bypass == null ? null : bypass!.toMap(),
      'response': ?response == null ? null : response!.toMap(),
    };
  }

  factory WafRuleConfigActions.fromMap(Map<String, dynamic> map) {
    return WafRuleConfigActions(
      bypass: map['bypass'] == null ? null : WafRuleConfigActionsBypass.fromMap((map['bypass'] as Map).cast<String, dynamic>()),
      response: map['response'] == null ? null : WafRuleConfigActionsResponse.fromMap((map['response'] as Map).cast<String, dynamic>()),
    );
  }
}

