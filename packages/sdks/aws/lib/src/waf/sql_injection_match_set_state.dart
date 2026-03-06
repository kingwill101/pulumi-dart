// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_injection_match_set_sql_injection_match_tuple.dart';

/// Input properties used for looking up and filtering SqlInjectionMatchSet resources.
class SqlInjectionMatchSetState {
  /// Amazon Resource Name (ARN) of the SQL injection match set.
  final pulumi.Input<String>? arn;
  /// The name or description of the SQL Injection Match Set.
  final pulumi.Input<String>? name;
  /// The parts of web requests that you want AWS WAF to inspect for malicious SQL code and, if you want AWS WAF to inspect a header, the name of the header.
  final pulumi.Input<List<SqlInjectionMatchSetSqlInjectionMatchTuple>>? sqlInjectionMatchTuples;

  /// Creates a new [SqlInjectionMatchSetState].
  /// [arn] Amazon Resource Name (ARN) of the SQL injection match set.
  /// [name] The name or description of the SQL Injection Match Set.
  /// [sqlInjectionMatchTuples] The parts of web requests that you want AWS WAF to inspect for malicious SQL code and, if you want AWS WAF to inspect a header, the name of the header.
  const SqlInjectionMatchSetState({
    this.arn,
    this.name,
    this.sqlInjectionMatchTuples,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'name': ?name,
      'sqlInjectionMatchTuples': ?pulumi.Input.mapOptionalInputValue<List<SqlInjectionMatchSetSqlInjectionMatchTuple>, List<Map<String, dynamic>>>(sqlInjectionMatchTuples, (value) => pulumi.Input.encodeList<SqlInjectionMatchSetSqlInjectionMatchTuple, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SqlInjectionMatchSetState.fromMap(Map<String, dynamic> map) {
    return SqlInjectionMatchSetState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sqlInjectionMatchTuples: (() { final guardedValue = map['sqlInjectionMatchTuples']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SqlInjectionMatchSetSqlInjectionMatchTuple>(guardedValue, (value) => SqlInjectionMatchSetSqlInjectionMatchTuple.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

