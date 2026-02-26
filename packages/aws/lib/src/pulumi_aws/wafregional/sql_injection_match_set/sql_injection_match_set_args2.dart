// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../sql_injection_match_set_sql_injection_match_tuple/sql_injection_match_set_sql_injection_match_tuple2.dart';

/// The set of arguments for SqlInjectionMatchSet.
class SqlInjectionMatchSetArgs2 {
  /// The name or description of the SizeConstraintSet.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The parts of web requests that you want AWS WAF to inspect for malicious SQL code and, if you want AWS WAF to inspect a header, the name of the header.
  final Input<List<SqlInjectionMatchSetSqlInjectionMatchTuple2>>?
      sqlInjectionMatchTuples;

  SqlInjectionMatchSetArgs2({
    this.name,
    this.region,
    this.sqlInjectionMatchTuples,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final sqlInjectionMatchTuplesValue = sqlInjectionMatchTuples;
    if (sqlInjectionMatchTuplesValue != null) {
      map['sqlInjectionMatchTuples'] = Input.mapOptionalInputValue<
              List<SqlInjectionMatchSetSqlInjectionMatchTuple2>,
              List<Map<String, dynamic>>>(
          sqlInjectionMatchTuplesValue,
          (value) => Input.encodeList<
              SqlInjectionMatchSetSqlInjectionMatchTuple2,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory SqlInjectionMatchSetArgs2.fromMap(Map<String, dynamic> map) {
    return SqlInjectionMatchSetArgs2(
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      sqlInjectionMatchTuples: Input.asOptionalInput<
              List<SqlInjectionMatchSetSqlInjectionMatchTuple2>>(
          map['sqlInjectionMatchTuples']),
    );
  }
}
