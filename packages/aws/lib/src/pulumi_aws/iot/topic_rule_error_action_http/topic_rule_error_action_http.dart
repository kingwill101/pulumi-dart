// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../topic_rule_error_action_http_http_header/topic_rule_error_action_http_http_header.dart';

class TopicRuleErrorActionHttp {
  /// The HTTPS URL used to verify ownership of <span pulumi-lang-nodejs="`url`" pulumi-lang-dotnet="`Url`" pulumi-lang-go="`url`" pulumi-lang-python="`url`" pulumi-lang-yaml="`url`" pulumi-lang-java="`url`">`url`</span>.
  final String? confirmationUrl;

  /// Custom HTTP header IoT Core should send. It is possible to define more than one custom header.
  final List<TopicRuleErrorActionHttpHttpHeader>? httpHeaders;

  /// The HTTPS URL.
  final String url;

  TopicRuleErrorActionHttp({
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
      map['httpHeaders'] = Input.encodeList<TopicRuleErrorActionHttpHttpHeader,
          Map<String, dynamic>>(httpHeadersValue, (value) => value.toMap());
    }
    map['url'] = url;
    return map;
  }

  factory TopicRuleErrorActionHttp.fromMap(Map<String, dynamic> map) {
    return TopicRuleErrorActionHttp(
      confirmationUrl: map['confirmationUrl'] == null
          ? null
          : map['confirmationUrl'] as String,
      httpHeaders: map['httpHeaders'] == null
          ? null
          : Input.decodeList<TopicRuleErrorActionHttpHttpHeader>(
              map['httpHeaders'],
              (value) => TopicRuleErrorActionHttpHttpHeader.fromMap(
                  (value as Map).cast<String, dynamic>())),
      url: map['url'] as String,
    );
  }
}
