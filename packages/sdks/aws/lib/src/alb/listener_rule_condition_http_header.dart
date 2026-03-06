// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListenerRuleConditionHttpHeader {
  /// Name of HTTP header to search. The maximum size is 40 characters. Comparison is case-insensitive. Only RFC7240 characters are supported. Wildcards are not supported. You cannot use HTTP header condition to specify the host header, use a `host-header` condition instead.
  final pulumi.Input<String> httpHeaderName;
  /// List of regular expression to compare against the HTTP header. The maximum length of each string is 128 characters. Conflicts with `values`.
  final pulumi.Input<List<String>>? regexValues;
  /// List of header value patterns to match. Maximum size of each pattern is 128 characters. Comparison is case-insensitive. Wildcard characters supported: * (matches 0 or more characters) and ? (matches exactly 1 character). If the same header appears multiple times in the request they will be searched in order until a match is found. Only one pattern needs to match for the condition to be satisfied. To require that all of the strings are a match, create one condition block per string. Conflicts with `regex_values`.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [ListenerRuleConditionHttpHeader].
  /// [httpHeaderName] Name of HTTP header to search. The maximum size is 40 characters. Comparison is case-insensitive. Only RFC7240 characters are supported. Wildcards are not supported. You cannot use HTTP header condition to specify the host header, use a `host-header` condition instead.
  /// [regexValues] List of regular expression to compare against the HTTP header. The maximum length of each string is 128 characters. Conflicts with `values`.
  /// [values] List of header value patterns to match. Maximum size of each pattern is 128 characters. Comparison is case-insensitive. Wildcard characters supported: * (matches 0 or more characters) and ? (matches exactly 1 character). If the same header appears multiple times in the request they will be searched in order until a match is found. Only one pattern needs to match for the condition to be satisfied. To require that all of the strings are a match, create one condition block per string. Conflicts with `regex_values`.
  const ListenerRuleConditionHttpHeader({
    required this.httpHeaderName,
    this.regexValues,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpHeaderName': httpHeaderName,
      'regexValues': ?regexValues,
      'values': ?values,
    };
  }

  factory ListenerRuleConditionHttpHeader.fromMap(Map<String, dynamic> map) {
    return ListenerRuleConditionHttpHeader(
      httpHeaderName: pulumi.Input.fromValue(map['httpHeaderName'] as String),
      regexValues: (() { final guardedValue = map['regexValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

