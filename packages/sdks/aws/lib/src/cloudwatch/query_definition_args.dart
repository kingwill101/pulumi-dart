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
  QueryDefinitionArgs({
    pulumi.Output<List<String>>? logGroupNames,
    pulumi.Output<String>? name,
    required pulumi.Output<String> queryString,
    pulumi.Output<String>? region,
  }) :
      logGroupNames = pulumi.Input.asOptionalInput<List<String>>(logGroupNames),
      name = pulumi.Input.asOptionalInput<String>(name),
      queryString = pulumi.Input.asInput<String>(queryString),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      logGroupNames: map['logGroupNames'] == null ? null : pulumi.Output.create<List<String>>((map['logGroupNames'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      queryString: pulumi.Output.create<String>(map['queryString'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

