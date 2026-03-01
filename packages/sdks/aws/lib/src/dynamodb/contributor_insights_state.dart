// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ContributorInsights resources.
class ContributorInsightsState {
  /// The global secondary index name
  final pulumi.Input<String>? indexName;
  /// argument to specify the [CloudWatch contributor insights mode](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/contributorinsights_HowItWorks.html#contributorinsights_HowItWorks.Modes)
  final pulumi.Input<String>? mode;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The name of the table to enable contributor insights
  final pulumi.Input<String>? tableName;

  /// Creates a new [ContributorInsightsState].
  /// [indexName] The global secondary index name
  /// [mode] argument to specify the [CloudWatch contributor insights mode](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/contributorinsights_HowItWorks.html#contributorinsights_HowItWorks.Modes)
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tableName] The name of the table to enable contributor insights
  ContributorInsightsState({
    pulumi.Output<String>? indexName,
    pulumi.Output<String>? mode,
    pulumi.Output<String>? region,
    pulumi.Output<String>? tableName,
  }) :
      indexName = pulumi.Input.asOptionalInput<String>(indexName),
      mode = pulumi.Input.asOptionalInput<String>(mode),
      region = pulumi.Input.asOptionalInput<String>(region),
      tableName = pulumi.Input.asOptionalInput<String>(tableName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indexName': ?indexName,
      'mode': ?mode,
      'region': ?region,
      'tableName': ?tableName,
    };
  }

  factory ContributorInsightsState.fromMap(Map<String, dynamic> map) {
    return ContributorInsightsState(
      indexName: map['indexName'] == null ? null : pulumi.Output.create<String>(map['indexName'] as String),
      mode: map['mode'] == null ? null : pulumi.Output.create<String>(map['mode'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tableName: map['tableName'] == null ? null : pulumi.Output.create<String>(map['tableName'] as String),
    );
  }
}

