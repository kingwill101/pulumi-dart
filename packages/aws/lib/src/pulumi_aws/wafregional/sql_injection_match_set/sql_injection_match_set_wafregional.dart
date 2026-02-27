import 'package:pulumi/pulumi.dart' as pulumi;
import '../sql_injection_match_set_sql_injection_match_tuple/sql_injection_match_set_sql_injection_match_tuple_wafregional.dart';
import 'sql_injection_match_set_wafregional_args.dart';

/// Provides a WAF Regional SQL Injection Match Set Resource for use with Application Load Balancer.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import WAF Regional Sql Injection Match Set using the id. For example:
///
/// ```sh
/// $ pulumi import aws:wafregional/sqlInjectionMatchSet:SqlInjectionMatchSet sql_injection_match_set a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class SqlInjectionMatchSetWafregional extends pulumi.CustomResource {
  /// The name or description of the SizeConstraintSet.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The parts of web requests that you want AWS WAF to inspect for malicious SQL code and, if you want AWS WAF to inspect a header, the name of the header.
  late final pulumi
      .Output<List<SqlInjectionMatchSetSqlInjectionMatchTupleWafregional>?>
      sqlInjectionMatchTuples;

  SqlInjectionMatchSetWafregional(
    String name, {
    SqlInjectionMatchSetWafregionalArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:wafregional/sqlInjectionMatchSet:SqlInjectionMatchSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.sqlInjectionMatchTuples = registerOutput<
            List<SqlInjectionMatchSetSqlInjectionMatchTupleWafregional>?>(
        'sqlInjectionMatchTuples');
  }
}
