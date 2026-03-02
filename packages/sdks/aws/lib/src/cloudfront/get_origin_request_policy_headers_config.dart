// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_origin_request_policy_headers_config_header.dart';

class GetOriginRequestPolicyHeadersConfig {
  final pulumi.Input<String> headerBehavior;
  final pulumi.Input<List<GetOriginRequestPolicyHeadersConfigHeader>> headers;

  /// Creates a new [GetOriginRequestPolicyHeadersConfig].
  /// [headerBehavior] Required.
  /// [headers] Required.
  GetOriginRequestPolicyHeadersConfig({
    required this.headerBehavior,
    required this.headers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerBehavior': headerBehavior,
      'headers': pulumi.Input.mapInputValue<List<GetOriginRequestPolicyHeadersConfigHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<GetOriginRequestPolicyHeadersConfigHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetOriginRequestPolicyHeadersConfig.fromMap(Map<String, dynamic> map) {
    return GetOriginRequestPolicyHeadersConfig(
      headerBehavior: (map['headerBehavior'] as String).input(),
      headers: (pulumi.Input.decodeList<GetOriginRequestPolicyHeadersConfigHeader>(map['headers']!, (value) => GetOriginRequestPolicyHeadersConfigHeader.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

