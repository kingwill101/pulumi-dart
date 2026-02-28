// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_rule_response.dart';

/// Defines the HTTP configuration for an API service. It contains a list of HttpRule, each specifying the mapping of an RPC method to one or more HTTP REST API methods.
class HttpResponse {
  /// When set to true, URL path parameters will be fully URI-decoded except in cases of single segment matches in reserved expansion, where "%2F" will be left encoded. The default behavior is to not decode RFC 6570 reserved characters in multi segment matches.
  final bool fullyDecodeReservedExpansion;

  /// A list of HTTP configuration rules that apply to individual API methods. **NOTE:** All service configuration rules follow "last one wins" order.
  final List<HttpRuleResponse> rules;

  /// Creates a new [HttpResponse].
  /// [fullyDecodeReservedExpansion] When set to true, URL path parameters will be fully URI-decoded except in cases of single segment matches in reserved expansion, where "%2F" will be left encoded. The default behavior is to not decode RFC 6570 reserved characters in multi segment matches.
  /// [rules] A list of HTTP configuration rules that apply to individual API methods. **NOTE:** All service configuration rules follow "last one wins" order.
  HttpResponse({
    required this.fullyDecodeReservedExpansion,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fullyDecodeReservedExpansion'] = fullyDecodeReservedExpansion;
    map['rules'] =
        pulumi.Input.encodeList<HttpRuleResponse, Map<String, dynamic>>(
            rules, (value) => value.toMap());
    return map;
  }

  factory HttpResponse.fromMap(Map<String, dynamic> map) {
    return HttpResponse(
      fullyDecodeReservedExpansion: map['fullyDecodeReservedExpansion'] as bool,
      rules: pulumi.Input.decodeList<HttpRuleResponse>(
          map['rules'],
          (value) =>
              HttpRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
