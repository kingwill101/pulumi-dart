// ignore_for_file: unused_element, unnecessary_cast

import '../web_acl_rule_action_block_custom_response/web_acl_rule_action_block_custom_response.dart';

class WebAclRuleActionBlock {
  /// Defines a custom response for the web request. See <span pulumi-lang-nodejs="`customResponse`" pulumi-lang-dotnet="`CustomResponse`" pulumi-lang-go="`customResponse`" pulumi-lang-python="`custom_response`" pulumi-lang-yaml="`customResponse`" pulumi-lang-java="`customResponse`">`custom_response`</span> below for details.
  final WebAclRuleActionBlockCustomResponse? customResponse;

  WebAclRuleActionBlock({
    this.customResponse,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customResponseValue = customResponse;
    if (customResponseValue != null) {
      map['customResponse'] = customResponseValue.toMap();
    }
    return map;
  }

  factory WebAclRuleActionBlock.fromMap(Map<String, dynamic> map) {
    return WebAclRuleActionBlock(
      customResponse: map['customResponse'] == null
          ? null
          : WebAclRuleActionBlockCustomResponse.fromMap(
              (map['customResponse'] as Map).cast<String, dynamic>()),
    );
  }
}
