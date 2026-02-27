// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../web_acl_rule_action_captcha_custom_request_handling_insert_header/web_acl_rule_action_captcha_custom_request_handling_insert_header.dart';

class WebAclRuleActionCaptchaCustomRequestHandling {
  /// The `insert_header` blocks used to define HTTP headers added to the request. See `insert_header` below for details.
  final List<WebAclRuleActionCaptchaCustomRequestHandlingInsertHeader>
      insertHeaders;

  WebAclRuleActionCaptchaCustomRequestHandling({
    required this.insertHeaders,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['insertHeaders'] = pulumi.Input.encodeList<
        WebAclRuleActionCaptchaCustomRequestHandlingInsertHeader,
        Map<String, dynamic>>(insertHeaders, (value) => value.toMap());
    return map;
  }

  factory WebAclRuleActionCaptchaCustomRequestHandling.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleActionCaptchaCustomRequestHandling(
      insertHeaders: pulumi.Input.decodeList<
              WebAclRuleActionCaptchaCustomRequestHandlingInsertHeader>(
          map['insertHeaders'],
          (value) =>
              WebAclRuleActionCaptchaCustomRequestHandlingInsertHeader.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
