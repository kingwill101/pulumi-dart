// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../sql_injection_match_set_sql_injection_match_tuple/sql_injection_match_set_sql_injection_match_tuple.dart';

/// The set of arguments for SqlInjectionMatchSet.
class SqlInjectionMatchSetArgs {
  /// The name or description of the SQL Injection Match Set.
  final Input<String>? name;

  /// The parts of web requests that you want AWS WAF to inspect for malicious SQL code and, if you want AWS WAF to inspect a header, the name of the header.
  final Input<List<SqlInjectionMatchSetSqlInjectionMatchTuple>>?
      sqlInjectionMatchTuples;

  SqlInjectionMatchSetArgs({
    this.name,
    this.sqlInjectionMatchTuples,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final sqlInjectionMatchTuplesValue = sqlInjectionMatchTuples;
    if (sqlInjectionMatchTuplesValue != null) {
      map['sqlInjectionMatchTuples'] = Input.mapOptionalInputValue<
              List<SqlInjectionMatchSetSqlInjectionMatchTuple>,
              List<Map<String, dynamic>>>(
          sqlInjectionMatchTuplesValue,
          (value) => Input.encodeList<
              SqlInjectionMatchSetSqlInjectionMatchTuple,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory SqlInjectionMatchSetArgs.fromMap(Map<String, dynamic> map) {
    return SqlInjectionMatchSetArgs(
      name: Input.asOptionalInput<String>(map['name']),
      sqlInjectionMatchTuples: Input.asOptionalInput<
              List<SqlInjectionMatchSetSqlInjectionMatchTuple>>(
          map['sqlInjectionMatchTuples']),
    );
  }
}
