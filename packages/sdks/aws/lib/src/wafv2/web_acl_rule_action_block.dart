// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_action_block_custom_response.dart';

class WebAclRuleActionBlock {
  /// Defines a custom response for the web request. See `custom_response` below for details.
  final pulumi.Input<WebAclRuleActionBlockCustomResponse>? customResponse;

  /// Creates a new [WebAclRuleActionBlock].
  /// [customResponse] Defines a custom response for the web request. See `custom_response` below for details.
  WebAclRuleActionBlock({this.customResponse});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customResponse':
          ?pulumi.Input.mapOptionalInputValue<
            WebAclRuleActionBlockCustomResponse,
            Map<String, dynamic>
          >(customResponse, (value) => value.toMap()),
    };
  }

  factory WebAclRuleActionBlock.fromMap(Map<String, dynamic> map) {
    return WebAclRuleActionBlock(
      customResponse: (() {
        final guardedValue = map['customResponse'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WebAclRuleActionBlockCustomResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
