// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../web_acl_default_action_allow_custom_request_handling_insert_header/web_acl_default_action_allow_custom_request_handling_insert_header.dart';

class WebAclDefaultActionAllowCustomRequestHandling {
  /// The <span pulumi-lang-nodejs="`insertHeader`" pulumi-lang-dotnet="`InsertHeader`" pulumi-lang-go="`insertHeader`" pulumi-lang-python="`insert_header`" pulumi-lang-yaml="`insertHeader`" pulumi-lang-java="`insertHeader`">`insert_header`</span> blocks used to define HTTP headers added to the request. See <span pulumi-lang-nodejs="`insertHeader`" pulumi-lang-dotnet="`InsertHeader`" pulumi-lang-go="`insertHeader`" pulumi-lang-python="`insert_header`" pulumi-lang-yaml="`insertHeader`" pulumi-lang-java="`insertHeader`">`insert_header`</span> below for details.
  final List<WebAclDefaultActionAllowCustomRequestHandlingInsertHeader>
      insertHeaders;

  WebAclDefaultActionAllowCustomRequestHandling({
    required this.insertHeaders,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['insertHeaders'] = Input.encodeList<
        WebAclDefaultActionAllowCustomRequestHandlingInsertHeader,
        Map<String, dynamic>>(insertHeaders, (value) => value.toMap());
    return map;
  }

  factory WebAclDefaultActionAllowCustomRequestHandling.fromMap(
      Map<String, dynamic> map) {
    return WebAclDefaultActionAllowCustomRequestHandling(
      insertHeaders: Input.decodeList<
              WebAclDefaultActionAllowCustomRequestHandlingInsertHeader>(
          map['insertHeaders'],
          (value) =>
              WebAclDefaultActionAllowCustomRequestHandlingInsertHeader.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
