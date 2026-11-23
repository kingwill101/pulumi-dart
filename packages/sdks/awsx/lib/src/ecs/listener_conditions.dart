// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'header_condition.dart';
import 'query_string_condition.dart';
import 'string_match.dart';

class ListenerConditions {
  /// HTTP request headers to match. Every configured header condition must match (AND). Within an
  /// individual condition, any configured value may match (OR).
  final pulumi.Input<List<HeaderCondition>?>? headers;
  /// Hostname patterns or regular expressions matched against the request's Host header. Matching is
  /// case-insensitive
  final pulumi.Input<StringMatch?>? hostnames;
  /// HTTP request methods to match, such as "GET" or "POST". Matching is case-sensitive and requires
  /// an exact match
  final pulumi.Input<List<String>?>? methods;
  /// Path patterns or regular expressions matched against the request URL path. Matching is
  /// case-sensitive and excludes the query string.
  final pulumi.Input<StringMatch?>? pathPatterns;
  /// Query-string key/value patterns to match.
  final pulumi.Input<List<QueryStringCondition>?>? queryStrings;

  /// Creates a new [ListenerConditions].
  /// [headers] HTTP request headers to match. Every configured header condition must match (AND). Within an
  /// [hostnames] Hostname patterns or regular expressions matched against the request's Host header. Matching is
  /// [methods] HTTP request methods to match, such as "GET" or "POST". Matching is case-sensitive and requires
  /// [pathPatterns] Path patterns or regular expressions matched against the request URL path. Matching is
  /// [queryStrings] Query-string key/value patterns to match.
  const ListenerConditions({
    this.headers,
    this.hostnames,
    this.methods,
    this.pathPatterns,
    this.queryStrings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': ?pulumi.Input.mapOptionalInputValue<List<HeaderCondition>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<HeaderCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostnames': ?pulumi.Input.mapOptionalInputValue<StringMatch, Map<String, dynamic>>(hostnames, (value) => value.toMap()),
      'methods': ?methods,
      'pathPatterns': ?pulumi.Input.mapOptionalInputValue<StringMatch, Map<String, dynamic>>(pathPatterns, (value) => value.toMap()),
      'queryStrings': ?pulumi.Input.mapOptionalInputValue<List<QueryStringCondition>, List<Map<String, dynamic>>>(queryStrings, (value) => pulumi.Input.encodeList<QueryStringCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ListenerConditions.fromMap(Map<String, dynamic> map) {
    return ListenerConditions(
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HeaderCondition>(guardedValue, (value) => HeaderCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      hostnames: (() { final guardedValue = map['hostnames']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StringMatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      methods: (() { final guardedValue = map['methods']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      pathPatterns: (() { final guardedValue = map['pathPatterns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StringMatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      queryStrings: (() { final guardedValue = map['queryStrings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<QueryStringCondition>(guardedValue, (value) => QueryStringCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
