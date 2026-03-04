// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_listener_rule_condition_host_header.dart';
import 'get_listener_rule_condition_http_header.dart';
import 'get_listener_rule_condition_http_request_method.dart';
import 'get_listener_rule_condition_path_pattern.dart';
import 'get_listener_rule_condition_query_string.dart';
import 'get_listener_rule_condition_source_ip.dart';

class GetListenerRuleCondition {
  /// Host header patterns to match.
  /// Detailed below.
  final pulumi.Input<List<GetListenerRuleConditionHostHeader>>? hostHeaders;

  /// HTTP header and values to match.
  /// Detailed below.
  final pulumi.Input<List<GetListenerRuleConditionHttpHeader>>? httpHeaders;

  /// Contains a single attribute `values`, which contains a set of HTTP request methods.
  final pulumi.Input<List<GetListenerRuleConditionHttpRequestMethod>>?
  httpRequestMethods;

  /// Path patterns to compare against the request URL.
  /// Detailed below.
  final pulumi.Input<List<GetListenerRuleConditionPathPattern>>? pathPatterns;

  /// Query string parameters to match.
  /// Detailed below.
  final pulumi.Input<List<GetListenerRuleConditionQueryString>>? queryStrings;

  /// Contains a single attribute `values`, which contains a set of source IPs in CIDR notation.
  final pulumi.Input<List<GetListenerRuleConditionSourceIp>>? sourceIps;

  /// Creates a new [GetListenerRuleCondition].
  /// [hostHeaders] Host header patterns to match.
  /// [httpHeaders] HTTP header and values to match.
  /// [httpRequestMethods] Contains a single attribute `values`, which contains a set of HTTP request methods.
  /// [pathPatterns] Path patterns to compare against the request URL.
  /// [queryStrings] Query string parameters to match.
  /// [sourceIps] Contains a single attribute `values`, which contains a set of source IPs in CIDR notation.
  GetListenerRuleCondition({
    this.hostHeaders,
    this.httpHeaders,
    this.httpRequestMethods,
    this.pathPatterns,
    this.queryStrings,
    this.sourceIps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostHeaders':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetListenerRuleConditionHostHeader>,
            List<Map<String, dynamic>>
          >(
            hostHeaders,
            (value) =>
                pulumi.Input.encodeList<
                  GetListenerRuleConditionHostHeader,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'httpHeaders':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetListenerRuleConditionHttpHeader>,
            List<Map<String, dynamic>>
          >(
            httpHeaders,
            (value) =>
                pulumi.Input.encodeList<
                  GetListenerRuleConditionHttpHeader,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'httpRequestMethods':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetListenerRuleConditionHttpRequestMethod>,
            List<Map<String, dynamic>>
          >(
            httpRequestMethods,
            (value) =>
                pulumi.Input.encodeList<
                  GetListenerRuleConditionHttpRequestMethod,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'pathPatterns':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetListenerRuleConditionPathPattern>,
            List<Map<String, dynamic>>
          >(
            pathPatterns,
            (value) =>
                pulumi.Input.encodeList<
                  GetListenerRuleConditionPathPattern,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'queryStrings':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetListenerRuleConditionQueryString>,
            List<Map<String, dynamic>>
          >(
            queryStrings,
            (value) =>
                pulumi.Input.encodeList<
                  GetListenerRuleConditionQueryString,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'sourceIps':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetListenerRuleConditionSourceIp>,
            List<Map<String, dynamic>>
          >(
            sourceIps,
            (value) =>
                pulumi.Input.encodeList<
                  GetListenerRuleConditionSourceIp,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetListenerRuleCondition.fromMap(Map<String, dynamic> map) {
    return GetListenerRuleCondition(
      hostHeaders: (() {
        final guardedValue = map['hostHeaders'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetListenerRuleConditionHostHeader>(
            guardedValue,
            (value) => GetListenerRuleConditionHostHeader.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      httpHeaders: (() {
        final guardedValue = map['httpHeaders'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetListenerRuleConditionHttpHeader>(
            guardedValue,
            (value) => GetListenerRuleConditionHttpHeader.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      httpRequestMethods: (() {
        final guardedValue = map['httpRequestMethods'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetListenerRuleConditionHttpRequestMethod>(
            guardedValue,
            (value) => GetListenerRuleConditionHttpRequestMethod.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      pathPatterns: (() {
        final guardedValue = map['pathPatterns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetListenerRuleConditionPathPattern>(
            guardedValue,
            (value) => GetListenerRuleConditionPathPattern.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      queryStrings: (() {
        final guardedValue = map['queryStrings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetListenerRuleConditionQueryString>(
            guardedValue,
            (value) => GetListenerRuleConditionQueryString.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      sourceIps: (() {
        final guardedValue = map['sourceIps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetListenerRuleConditionSourceIp>(
            guardedValue,
            (value) => GetListenerRuleConditionSourceIp.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
