// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_injection_match_set_sql_injection_match_tuple.dart';

/// Input properties used for looking up and filtering SqlInjectionMatchSet resources.
class SqlInjectionMatchSetState {
  /// The name or description of the SizeConstraintSet.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The parts of web requests that you want AWS WAF to inspect for malicious SQL code and, if you want AWS WAF to inspect a header, the name of the header.
  final pulumi.Input<List<SqlInjectionMatchSetSqlInjectionMatchTuple>>? sqlInjectionMatchTuples;

  /// Creates a new [SqlInjectionMatchSetState].
  /// [name] The name or description of the SizeConstraintSet.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sqlInjectionMatchTuples] The parts of web requests that you want AWS WAF to inspect for malicious SQL code and, if you want AWS WAF to inspect a header, the name of the header.
  SqlInjectionMatchSetState({
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<List<SqlInjectionMatchSetSqlInjectionMatchTuple>>? sqlInjectionMatchTuples,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      sqlInjectionMatchTuples = pulumi.Input.asOptionalInput<List<SqlInjectionMatchSetSqlInjectionMatchTuple>>(sqlInjectionMatchTuples);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'region': ?region,
      'sqlInjectionMatchTuples': ?pulumi.Input.mapOptionalInputValue<List<SqlInjectionMatchSetSqlInjectionMatchTuple>, List<Map<String, dynamic>>>(sqlInjectionMatchTuples, (value) => pulumi.Input.encodeList<SqlInjectionMatchSetSqlInjectionMatchTuple, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SqlInjectionMatchSetState.fromMap(Map<String, dynamic> map) {
    return SqlInjectionMatchSetState(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      sqlInjectionMatchTuples: map['sqlInjectionMatchTuples'] == null ? null : pulumi.Output.create<List<SqlInjectionMatchSetSqlInjectionMatchTuple>>(pulumi.Input.decodeList<SqlInjectionMatchSetSqlInjectionMatchTuple>(map['sqlInjectionMatchTuples'], (value) => SqlInjectionMatchSetSqlInjectionMatchTuple.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

