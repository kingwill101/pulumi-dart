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
    this.indexName,
    this.mode,
    this.region,
    this.tableName,
  });

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
      indexName: (() {
        final guardedValue = map['indexName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mode: (() {
        final guardedValue = map['mode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tableName: (() {
        final guardedValue = map['tableName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
