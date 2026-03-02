// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'origin_request_policy_headers_config_headers.dart';

class OriginRequestPolicyHeadersConfig {
  final pulumi.Input<String>? headerBehavior;
  final pulumi.Input<OriginRequestPolicyHeadersConfigHeaders>? headers;

  /// Creates a new [OriginRequestPolicyHeadersConfig].
  /// [headerBehavior] Optional.
  /// [headers] Optional.
  OriginRequestPolicyHeadersConfig({
    this.headerBehavior,
    this.headers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerBehavior': ?headerBehavior,
      'headers': ?pulumi.Input.mapOptionalInputValue<OriginRequestPolicyHeadersConfigHeaders, Map<String, dynamic>>(headers, (value) => value.toMap()),
    };
  }

  factory OriginRequestPolicyHeadersConfig.fromMap(Map<String, dynamic> map) {
    return OriginRequestPolicyHeadersConfig(
      headerBehavior: map['headerBehavior'] == null ? null : (map['headerBehavior'] as String).input(),
      headers: map['headers'] == null ? null : (OriginRequestPolicyHeadersConfigHeaders.fromMap((map['headers'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

