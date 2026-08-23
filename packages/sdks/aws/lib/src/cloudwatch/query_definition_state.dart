// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering QueryDefinition resources.
class QueryDefinitionState {
  /// The query definition ARN.
  final pulumi.Input<String>? arn;
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
  /// [arn] The query definition ARN.
  /// [logGroupNames] Specific log groups to use with the query.
  /// [name] The name of the query.
  /// [queryDefinitionId] The query definition ID.
  /// [queryString] The query to save. You can read more about CloudWatch Logs Query Syntax in the [documentation](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const QueryDefinitionState({
    this.arn,
    this.logGroupNames,
    this.name,
    this.queryDefinitionId,
    this.queryString,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'logGroupNames': ?logGroupNames,
      'name': ?name,
      'queryDefinitionId': ?queryDefinitionId,
      'queryString': ?queryString,
      'region': ?region,
    };
  }

  factory QueryDefinitionState.fromMap(Map<String, dynamic> map) {
    return QueryDefinitionState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logGroupNames: (() { final guardedValue = map['logGroupNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryDefinitionId: (() { final guardedValue = map['queryDefinitionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryString: (() { final guardedValue = map['queryString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
