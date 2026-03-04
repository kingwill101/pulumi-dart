// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'waf_rule_shared_actions_response.dart';

class WafRuleSharedActions {
  final pulumi.Input<WafRuleSharedActionsResponse>? response;

  /// Creates a new [WafRuleSharedActions].
  /// [response] Optional.
  WafRuleSharedActions({this.response});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'response':
          ?pulumi.Input.mapOptionalInputValue<
            WafRuleSharedActionsResponse,
            Map<String, dynamic>
          >(response, (value) => value.toMap()),
    };
  }

  factory WafRuleSharedActions.fromMap(Map<String, dynamic> map) {
    return WafRuleSharedActions(
      response: (() {
        final guardedValue = map['response'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WafRuleSharedActionsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
