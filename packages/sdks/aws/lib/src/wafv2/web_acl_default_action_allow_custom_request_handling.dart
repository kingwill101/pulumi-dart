// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_default_action_allow_custom_request_handling_insert_header.dart';

class WebAclDefaultActionAllowCustomRequestHandling {
  /// The `insertHeader` blocks used to define HTTP headers added to the request. See `insertHeader` below for details.
  final pulumi.Input<List<WebAclDefaultActionAllowCustomRequestHandlingInsertHeader>> insertHeaders;

  /// Creates a new [WebAclDefaultActionAllowCustomRequestHandling].
  /// [insertHeaders] The `insertHeader` blocks used to define HTTP headers added to the request. See `insertHeader` below for details.
  const WebAclDefaultActionAllowCustomRequestHandling({
    required this.insertHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'insertHeaders': pulumi.Input.mapInputValue<List<WebAclDefaultActionAllowCustomRequestHandlingInsertHeader>, List<Map<String, dynamic>>>(insertHeaders, (value) => pulumi.Input.encodeList<WebAclDefaultActionAllowCustomRequestHandlingInsertHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclDefaultActionAllowCustomRequestHandling.fromMap(Map<String, dynamic> map) {
    return WebAclDefaultActionAllowCustomRequestHandling(
      insertHeaders: pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclDefaultActionAllowCustomRequestHandlingInsertHeader>(map['insertHeaders']!, (value) => WebAclDefaultActionAllowCustomRequestHandlingInsertHeader.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
