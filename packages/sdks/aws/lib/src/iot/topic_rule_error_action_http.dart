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
  const TopicRuleErrorActionHttp({
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
      confirmationUrl: (() { final guardedValue = map['confirmationUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpHeaders: (() { final guardedValue = map['httpHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TopicRuleErrorActionHttpHttpHeader>(guardedValue, (value) => TopicRuleErrorActionHttpHttpHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}

