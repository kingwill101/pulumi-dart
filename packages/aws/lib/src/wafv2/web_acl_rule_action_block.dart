// ignore_for_file: unused_element, unnecessary_cast

import 'web_acl_rule_action_block_custom_response.dart';

class WebAclRuleActionBlock {
  /// Defines a custom response for the web request. See `custom_response` below for details.
  final WebAclRuleActionBlockCustomResponse? customResponse;

  /// Creates a new [WebAclRuleActionBlock].
  /// [customResponse] Defines a custom response for the web request. See `custom_response` below for details.
  WebAclRuleActionBlock({this.customResponse});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customResponse': ?customResponse == null
          ? null
          : customResponse!.toMap(),
    };
  }

  factory WebAclRuleActionBlock.fromMap(Map<String, dynamic> map) {
    return WebAclRuleActionBlock(
      customResponse: map['customResponse'] == null
          ? null
          : WebAclRuleActionBlockCustomResponse.fromMap(
              (map['customResponse'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
