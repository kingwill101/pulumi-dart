// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'topic_rule_http_http_header.dart';

class TopicRuleHttp {
  /// The HTTPS URL used to verify ownership of `url`.
  final String? confirmationUrl;

  /// Custom HTTP header IoT Core should send. It is possible to define more than one custom header.
  final List<TopicRuleHttpHttpHeader>? httpHeaders;

  /// The HTTPS URL.
  final String url;

  /// Creates a new [TopicRuleHttp].
  /// [confirmationUrl] The HTTPS URL used to verify ownership of `url`.
  /// [httpHeaders] Custom HTTP header IoT Core should send. It is possible to define more than one custom header.
  /// [url] The HTTPS URL.
  TopicRuleHttp({this.confirmationUrl, this.httpHeaders, required this.url});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confirmationUrl': ?confirmationUrl,
      'httpHeaders': ?httpHeaders == null
          ? null
          : pulumi.Input.encodeList<
              TopicRuleHttpHttpHeader,
              Map<String, dynamic>
            >(httpHeaders!, (value) => value.toMap()),
      'url': url,
    };
  }

  factory TopicRuleHttp.fromMap(Map<String, dynamic> map) {
    return TopicRuleHttp(
      confirmationUrl: map['confirmationUrl'] == null
          ? null
          : map['confirmationUrl'] as String,
      httpHeaders: map['httpHeaders'] == null
          ? null
          : pulumi.Input.decodeList<TopicRuleHttpHttpHeader>(
              map['httpHeaders'],
              (value) => TopicRuleHttpHttpHeader.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      url: map['url'] as String,
    );
  }
}
