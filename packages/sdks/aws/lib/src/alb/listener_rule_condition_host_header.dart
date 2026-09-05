// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListenerRuleConditionHostHeader {
  /// List of regular expressions to compare against the host header. The maximum length of each string is 128 characters. Conflicts with `values`.
  final pulumi.Input<List<String>?>? regexValues;
  /// List of host header value patterns to match. Maximum size of each pattern is 128 characters. Comparison is case-insensitive. Wildcard characters supported: * (matches 0 or more characters) and ? (matches exactly 1 character). Only one pattern needs to match for the condition to be satisfied. To match host headers containing a non-standard port (for example, `example.com:8443`), use `regexValues`. Conflicts with `regexValues`.
  final pulumi.Input<List<String>?>? values;

  /// Creates a new [ListenerRuleConditionHostHeader].
  /// [regexValues] List of regular expressions to compare against the host header. The maximum length of each string is 128 characters. Conflicts with `values`.
  /// [values] List of host header value patterns to match. Maximum size of each pattern is 128 characters. Comparison is case-insensitive. Wildcard characters supported: * (matches 0 or more characters) and ? (matches exactly 1 character). Only one pattern needs to match for the condition to be satisfied. To match host headers containing a non-standard port (for example, `example.com:8443`), use `regexValues`. Conflicts with `regexValues`.
  const ListenerRuleConditionHostHeader({
    this.regexValues,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regexValues': ?regexValues,
      'values': ?values,
    };
  }

  factory ListenerRuleConditionHostHeader.fromMap(Map<String, dynamic> map) {
    return ListenerRuleConditionHostHeader(
      regexValues: (() { final guardedValue = map['regexValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
