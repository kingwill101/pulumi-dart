import 'package:pulumi/pulumi.dart' as pulumi;
import '../sql_injection_match_set_sql_injection_match_tuple/sql_injection_match_set_sql_injection_match_tuple.dart';
import 'sql_injection_match_set_args.dart';

/// Provides a WAF SQL Injection Match Set Resource
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import AWS WAF SQL Injection Match Set using their ID. For example:
///
/// ```sh
/// $ pulumi import aws:waf/sqlInjectionMatchSet:SqlInjectionMatchSet example a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class SqlInjectionMatchSet extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the SQL injection match set.
  late final pulumi.Output<String> arn;

  /// The name or description of the SQL Injection Match Set.
  late final pulumi.Output<String> name;

  /// The parts of web requests that you want AWS WAF to inspect for malicious SQL code and, if you want AWS WAF to inspect a header, the name of the header.
  late final pulumi.Output<List<SqlInjectionMatchSetSqlInjectionMatchTuple>?>
      sqlInjectionMatchTuples;

  SqlInjectionMatchSet(
    String name, {
    SqlInjectionMatchSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:waf/sqlInjectionMatchSet:SqlInjectionMatchSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.sqlInjectionMatchTuples =
        registerOutput<List<SqlInjectionMatchSetSqlInjectionMatchTuple>?>(
            'sqlInjectionMatchTuples');
  }
}
