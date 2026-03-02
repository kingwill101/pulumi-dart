// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'topic_rule_error_action_http_http_header.dart';

class TopicRuleErrorActionHttp {
  /// The HTTPS URL used to verify ownership of `url`.
  final pulumi.Input<String>? confirmationUrl;
  /// Custom HTTP header IoT Core should send. It is possible to define more than one custom header.
  final pulumi.Input<List<TopicRuleErrorActionHttpHttpHeader>>? httpHeaders;
  /// The HTTPS URL.
  final pulumi.Input<String> url;

  /// Creates a new [TopicRuleErrorActionHttp].
  /// [confirmationUrl] The HTTPS URL used to verify ownership of `url`.
  /// [httpHeaders] Custom HTTP header IoT Core should send. It is possible to define more than one custom header.
  /// [url] The HTTPS URL.
  TopicRuleErrorActionHttp({
    this.confirmationUrl,
    this.httpHeaders,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confirmationUrl': ?confirmationUrl,
      'httpHeaders': ?pulumi.Input.mapOptionalInputValue<List<TopicRuleErrorActionHttpHttpHeader>, List<Map<String, dynamic>>>(httpHeaders, (value) => pulumi.Input.encodeList<TopicRuleErrorActionHttpHttpHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'url': url,
    };
  }

  factory TopicRuleErrorActionHttp.fromMap(Map<String, dynamic> map) {
    return TopicRuleErrorActionHttp(
      confirmationUrl: map['confirmationUrl'] == null ? null : ((map['confirmationUrl'] as String).input()).input(),
      httpHeaders: map['httpHeaders'] == null ? null : ((pulumi.Input.decodeList<TopicRuleErrorActionHttpHttpHeader>(map['httpHeaders']!, (value) => TopicRuleErrorActionHttpHttpHeader.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      url: (map['url'] as String).input(),
    );
  }
}

