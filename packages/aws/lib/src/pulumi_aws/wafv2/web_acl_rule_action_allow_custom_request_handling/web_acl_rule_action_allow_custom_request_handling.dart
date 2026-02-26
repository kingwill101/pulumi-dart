// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../web_acl_rule_action_allow_custom_request_handling_insert_header/web_acl_rule_action_allow_custom_request_handling_insert_header.dart';

class WebAclRuleActionAllowCustomRequestHandling {
  /// The <span pulumi-lang-nodejs="`insertHeader`" pulumi-lang-dotnet="`InsertHeader`" pulumi-lang-go="`insertHeader`" pulumi-lang-python="`insert_header`" pulumi-lang-yaml="`insertHeader`" pulumi-lang-java="`insertHeader`">`insert_header`</span> blocks used to define HTTP headers added to the request. See <span pulumi-lang-nodejs="`insertHeader`" pulumi-lang-dotnet="`InsertHeader`" pulumi-lang-go="`insertHeader`" pulumi-lang-python="`insert_header`" pulumi-lang-yaml="`insertHeader`" pulumi-lang-java="`insertHeader`">`insert_header`</span> below for details.
  final List<WebAclRuleActionAllowCustomRequestHandlingInsertHeader>
      insertHeaders;

  WebAclRuleActionAllowCustomRequestHandling({
    required this.insertHeaders,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['insertHeaders'] = Input.encodeList<
        WebAclRuleActionAllowCustomRequestHandlingInsertHeader,
        Map<String, dynamic>>(insertHeaders, (value) => value.toMap());
    return map;
  }

  factory WebAclRuleActionAllowCustomRequestHandling.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleActionAllowCustomRequestHandling(
      insertHeaders: Input.decodeList<
              WebAclRuleActionAllowCustomRequestHandlingInsertHeader>(
          map['insertHeaders'],
          (value) =>
              WebAclRuleActionAllowCustomRequestHandlingInsertHeader.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
