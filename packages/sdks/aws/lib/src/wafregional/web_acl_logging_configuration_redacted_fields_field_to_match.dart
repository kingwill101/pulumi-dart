// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclLoggingConfigurationRedactedFieldsFieldToMatch {
  /// When the value of `type` is `HEADER`, enter the name of the header that you want the WAF to search, for example, `User-Agent` or `Referer`. If the value of `type` is any other value, omit `data`.
  final pulumi.Input<String>? data;
  /// The part of the web request that you want AWS WAF to search for a specified stringE.g., `HEADER` or `METHOD`
  final pulumi.Input<String> type;

  /// Creates a new [WebAclLoggingConfigurationRedactedFieldsFieldToMatch].
  /// [data] When the value of `type` is `HEADER`, enter the name of the header that you want the WAF to search, for example, `User-Agent` or `Referer`. If the value of `type` is any other value, omit `data`.
  /// [type] The part of the web request that you want AWS WAF to search for a specified stringE.g., `HEADER` or `METHOD`
  WebAclLoggingConfigurationRedactedFieldsFieldToMatch({
    this.data,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data,
      'type': type,
    };
  }

  factory WebAclLoggingConfigurationRedactedFieldsFieldToMatch.fromMap(Map<String, dynamic> map) {
    return WebAclLoggingConfigurationRedactedFieldsFieldToMatch(
      data: map['data'] == null ? null : (map['data'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

