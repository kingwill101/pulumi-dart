// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_injection_match_set_sql_injection_match_tuple.dart';

/// {@template pulumi_wafregional_sql_injection_match_set_sql_injection_match_set_args_doc}
/// The set of arguments for SqlInjectionMatchSet.
/// {@endtemplate}
/// {@macro pulumi_wafregional_sql_injection_match_set_sql_injection_match_set_args_doc}
class SqlInjectionMatchSetArgs {
  /// The name or description of the SizeConstraintSet.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The parts of web requests that you want AWS WAF to inspect for malicious SQL code and, if you want AWS WAF to inspect a header, the name of the header.
  final pulumi.Input<List<SqlInjectionMatchSetSqlInjectionMatchTuple>>?
      sqlInjectionMatchTuples;

  /// Creates a new [SqlInjectionMatchSetArgs].
  /// [name] The name or description of the SizeConstraintSet.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sqlInjectionMatchTuples] The parts of web requests that you want AWS WAF to inspect for malicious SQL code and, if you want AWS WAF to inspect a header, the name of the header.
  SqlInjectionMatchSetArgs({
    String? name,
    String? region,
    List<SqlInjectionMatchSetSqlInjectionMatchTuple>? sqlInjectionMatchTuples,
  })  : name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        sqlInjectionMatchTuples = pulumi.Input.asOptionalInput<
                List<SqlInjectionMatchSetSqlInjectionMatchTuple>>(
            sqlInjectionMatchTuples);

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
      map['sqlInjectionMatchTuples'] = pulumi.Input.mapOptionalInputValue<
              List<SqlInjectionMatchSetSqlInjectionMatchTuple>,
              List<Map<String, dynamic>>>(
          sqlInjectionMatchTuplesValue,
          (value) => pulumi.Input.encodeList<
              SqlInjectionMatchSetSqlInjectionMatchTuple,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory SqlInjectionMatchSetArgs.fromMap(Map<String, dynamic> map) {
    return SqlInjectionMatchSetArgs(
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      sqlInjectionMatchTuples: map['sqlInjectionMatchTuples'] == null
          ? null
          : pulumi.Input.decodeList<SqlInjectionMatchSetSqlInjectionMatchTuple>(
              map['sqlInjectionMatchTuples'],
              (value) => SqlInjectionMatchSetSqlInjectionMatchTuple.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
