// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_default_action_block_custom_response_response_header.dart';

class WebAclDefaultActionBlockCustomResponse {
  /// References the response body that you want AWS WAF to return to the web request client. This must reference a `key` defined in a `custom_response_body` block of this resource.
  final pulumi.Input<String>? customResponseBodyKey;
  /// The HTTP status code to return to the client.
  final pulumi.Input<int> responseCode;
  /// The `response_header` blocks used to define the HTTP response headers added to the response. See `response_header` below for details.
  final pulumi.Input<List<WebAclDefaultActionBlockCustomResponseResponseHeader>>? responseHeaders;

  /// Creates a new [WebAclDefaultActionBlockCustomResponse].
  /// [customResponseBodyKey] References the response body that you want AWS WAF to return to the web request client. This must reference a `key` defined in a `custom_response_body` block of this resource.
  /// [responseCode] The HTTP status code to return to the client.
  /// [responseHeaders] The `response_header` blocks used to define the HTTP response headers added to the response. See `response_header` below for details.
  WebAclDefaultActionBlockCustomResponse({
    this.customResponseBodyKey,
    required this.responseCode,
    this.responseHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customResponseBodyKey': ?customResponseBodyKey,
      'responseCode': responseCode,
      'responseHeaders': ?pulumi.Input.mapOptionalInputValue<List<WebAclDefaultActionBlockCustomResponseResponseHeader>, List<Map<String, dynamic>>>(responseHeaders, (value) => pulumi.Input.encodeList<WebAclDefaultActionBlockCustomResponseResponseHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclDefaultActionBlockCustomResponse.fromMap(Map<String, dynamic> map) {
    return WebAclDefaultActionBlockCustomResponse(
      customResponseBodyKey: map['customResponseBodyKey'] == null ? null : (map['customResponseBodyKey'] as String).input(),
      responseCode: (map['responseCode'] as int).input(),
      responseHeaders: map['responseHeaders'] == null ? null : (pulumi.Input.decodeList<WebAclDefaultActionBlockCustomResponseResponseHeader>(map['responseHeaders'], (value) => WebAclDefaultActionBlockCustomResponseResponseHeader.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

