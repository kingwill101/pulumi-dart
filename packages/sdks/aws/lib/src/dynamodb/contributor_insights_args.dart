// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dynamodb_contributor_insights_contributor_insights_args_doc}
/// The set of arguments for ContributorInsights.
/// {@endtemplate}
/// {@macro pulumi_dynamodb_contributor_insights_contributor_insights_args_doc}
class ContributorInsightsArgs {
  /// The global secondary index name
  final pulumi.Input<String>? indexName;
  /// argument to specify the [CloudWatch contributor insights mode](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/contributorinsights_HowItWorks.html#contributorinsights_HowItWorks.Modes)
  final pulumi.Input<String>? mode;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The name of the table to enable contributor insights
  final pulumi.Input<String> tableName;

  /// Creates a new [ContributorInsightsArgs].
  /// [indexName] The global secondary index name
  /// [mode] argument to specify the [CloudWatch contributor insights mode](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/contributorinsights_HowItWorks.html#contributorinsights_HowItWorks.Modes)
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tableName] The name of the table to enable contributor insights
  const ContributorInsightsArgs({
    this.indexName,
    this.mode,
    this.region,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indexName': ?indexName,
      'mode': ?mode,
      'region': ?region,
      'tableName': tableName,
    };
  }

  factory ContributorInsightsArgs.fromMap(Map<String, dynamic> map) {
    return ContributorInsightsArgs(
      indexName: (() { final guardedValue = map['indexName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
    );
  }
}
