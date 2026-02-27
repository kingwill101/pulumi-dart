// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../sql_injection_match_set_sql_injection_match_tuple/sql_injection_match_set_sql_injection_match_tuple_wafregional.dart';

/// The set of arguments for SqlInjectionMatchSet.
class SqlInjectionMatchSetWafregionalArgs {
  /// The name or description of the SizeConstraintSet.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The parts of web requests that you want AWS WAF to inspect for malicious SQL code and, if you want AWS WAF to inspect a header, the name of the header.
  final pulumi
      .Input<List<SqlInjectionMatchSetSqlInjectionMatchTupleWafregional>>?
      sqlInjectionMatchTuples;

  SqlInjectionMatchSetWafregionalArgs({
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
      map['sqlInjectionMatchTuples'] = pulumi.Input.mapOptionalInputValue<
              List<SqlInjectionMatchSetSqlInjectionMatchTupleWafregional>,
              List<Map<String, dynamic>>>(
          sqlInjectionMatchTuplesValue,
          (value) => pulumi.Input.encodeList<
              SqlInjectionMatchSetSqlInjectionMatchTupleWafregional,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory SqlInjectionMatchSetWafregionalArgs.fromMap(
      Map<String, dynamic> map) {
    return SqlInjectionMatchSetWafregionalArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      sqlInjectionMatchTuples: pulumi.Input.asOptionalInput<
              List<SqlInjectionMatchSetSqlInjectionMatchTupleWafregional>>(
          map['sqlInjectionMatchTuples']),
    );
  }
}
