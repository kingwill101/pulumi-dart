// ignore_for_file: unused_element, unnecessary_cast

import 'origin_request_policy_headers_config_headers.dart';

class OriginRequestPolicyHeadersConfig {
  final String? headerBehavior;
  final OriginRequestPolicyHeadersConfigHeaders? headers;

  /// Creates a new [OriginRequestPolicyHeadersConfig].
  /// [headerBehavior] Optional.
  /// [headers] Optional.
  OriginRequestPolicyHeadersConfig({
    this.headerBehavior,
    this.headers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final headerBehaviorValue = headerBehavior;
    if (headerBehaviorValue != null) {
      map['headerBehavior'] = headerBehaviorValue;
    }
    final headersValue = headers;
    if (headersValue != null) {
      map['headers'] = headersValue.toMap();
    }
    return map;
  }

  factory OriginRequestPolicyHeadersConfig.fromMap(Map<String, dynamic> map) {
    return OriginRequestPolicyHeadersConfig(
      headerBehavior: map['headerBehavior'] == null
          ? null
          : map['headerBehavior'] as String,
      headers: map['headers'] == null
          ? null
          : OriginRequestPolicyHeadersConfigHeaders.fromMap(
              (map['headers'] as Map).cast<String, dynamic>()),
    );
  }
}
