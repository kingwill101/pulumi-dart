// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering QueryDefinition resources.
class QueryDefinitionState {
  /// Specific log groups to use with the query.
  final pulumi.Input<List<String>>? logGroupNames;
  /// The name of the query.
  final pulumi.Input<String>? name;
  /// The query definition ID.
  final pulumi.Input<String>? queryDefinitionId;
  /// The query to save. You can read more about CloudWatch Logs Query Syntax in the [documentation](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html).
  final pulumi.Input<String>? queryString;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [QueryDefinitionState].
  /// [logGroupNames] Specific log groups to use with the query.
  /// [name] The name of the query.
  /// [queryDefinitionId] The query definition ID.
  /// [queryString] The query to save. You can read more about CloudWatch Logs Query Syntax in the [documentation](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  QueryDefinitionState({
    pulumi.Output<List<String>>? logGroupNames,
    pulumi.Output<String>? name,
    pulumi.Output<String>? queryDefinitionId,
    pulumi.Output<String>? queryString,
    pulumi.Output<String>? region,
  }) :
      logGroupNames = pulumi.Input.asOptionalInput<List<String>>(logGroupNames),
      name = pulumi.Input.asOptionalInput<String>(name),
      queryDefinitionId = pulumi.Input.asOptionalInput<String>(queryDefinitionId),
      queryString = pulumi.Input.asOptionalInput<String>(queryString),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logGroupNames': ?logGroupNames,
      'name': ?name,
      'queryDefinitionId': ?queryDefinitionId,
      'queryString': ?queryString,
      'region': ?region,
    };
  }

  factory QueryDefinitionState.fromMap(Map<String, dynamic> map) {
    return QueryDefinitionState(
      logGroupNames: map['logGroupNames'] == null ? null : pulumi.Output.create<List<String>>((map['logGroupNames'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      queryDefinitionId: map['queryDefinitionId'] == null ? null : pulumi.Output.create<String>(map['queryDefinitionId'] as String),
      queryString: map['queryString'] == null ? null : pulumi.Output.create<String>(map['queryString'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

