// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_origin_request_policy_headers_config_header/get_origin_request_policy_headers_config_header.dart';

class GetOriginRequestPolicyHeadersConfig {
  final String headerBehavior;
  final List<GetOriginRequestPolicyHeadersConfigHeader> headers;

  GetOriginRequestPolicyHeadersConfig({
    required this.headerBehavior,
    required this.headers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['headerBehavior'] = headerBehavior;
    map['headers'] = pulumi.Input.encodeList<
        GetOriginRequestPolicyHeadersConfigHeader,
        Map<String, dynamic>>(headers, (value) => value.toMap());
    return map;
  }

  factory GetOriginRequestPolicyHeadersConfig.fromMap(
      Map<String, dynamic> map) {
    return GetOriginRequestPolicyHeadersConfig(
      headerBehavior: map['headerBehavior'] as String,
      headers:
          pulumi.Input.decodeList<GetOriginRequestPolicyHeadersConfigHeader>(
              map['headers'],
              (value) => GetOriginRequestPolicyHeadersConfigHeader.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
