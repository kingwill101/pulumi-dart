// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../web_acl_default_action_allow_custom_request_handling_insert_header/web_acl_default_action_allow_custom_request_handling_insert_header.dart';

class WebAclDefaultActionAllowCustomRequestHandling {
  /// The `insert_header` blocks used to define HTTP headers added to the request. See `insert_header` below for details.
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
