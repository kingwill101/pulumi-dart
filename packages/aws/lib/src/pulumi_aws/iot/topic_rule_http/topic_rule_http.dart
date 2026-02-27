// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../topic_rule_http_http_header/topic_rule_http_http_header.dart';

class TopicRuleHttp {
  /// The HTTPS URL used to verify ownership of `url`.
  final String? confirmationUrl;

  /// Custom HTTP header IoT Core should send. It is possible to define more than one custom header.
  final List<TopicRuleHttpHttpHeader>? httpHeaders;

  /// The HTTPS URL.
  final String url;

  TopicRuleHttp({
    this.confirmationUrl,
    this.httpHeaders,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final confirmationUrlValue = confirmationUrl;
    if (confirmationUrlValue != null) {
      map['confirmationUrl'] = confirmationUrlValue;
    }
    final httpHeadersValue = httpHeaders;
    if (httpHeadersValue != null) {
      map['httpHeaders'] =
          Input.encodeList<TopicRuleHttpHttpHeader, Map<String, dynamic>>(
              httpHeadersValue, (value) => value.toMap());
    }
    map['url'] = url;
    return map;
  }

  factory TopicRuleHttp.fromMap(Map<String, dynamic> map) {
    return TopicRuleHttp(
      confirmationUrl: map['confirmationUrl'] == null
          ? null
          : map['confirmationUrl'] as String,
      httpHeaders: map['httpHeaders'] == null
          ? null
          : Input.decodeList<TopicRuleHttpHttpHeader>(
              map['httpHeaders'],
              (value) => TopicRuleHttpHttpHeader.fromMap(
                  (value as Map).cast<String, dynamic>())),
      url: map['url'] as String,
    );
  }
}
