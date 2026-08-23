// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudwatch_query_definition_query_definition_args_doc}
/// The set of arguments for QueryDefinition.
/// {@endtemplate}
/// {@macro pulumi_cloudwatch_query_definition_query_definition_args_doc}
class QueryDefinitionArgs {
  /// Specific log groups to use with the query.
  final pulumi.Input<List<String>>? logGroupNames;
  /// The name of the query.
  final pulumi.Input<String>? name;
  /// The query to save. You can read more about CloudWatch Logs Query Syntax in the [documentation](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html).
  final pulumi.Input<String> queryString;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [QueryDefinitionArgs].
  /// [logGroupNames] Specific log groups to use with the query.
  /// [name] The name of the query.
  /// [queryString] The query to save. You can read more about CloudWatch Logs Query Syntax in the [documentation](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const QueryDefinitionArgs({
    this.logGroupNames,
    this.name,
    required this.queryString,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logGroupNames': ?logGroupNames,
      'name': ?name,
      'queryString': queryString,
      'region': ?region,
    };
  }

  factory QueryDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return QueryDefinitionArgs(
      logGroupNames: (() { final guardedValue = map['logGroupNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryString: pulumi.Input.fromValue(map['queryString'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
