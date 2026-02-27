// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ContributorInsights.
class ContributorInsightsArgs {
  /// The global secondary index name
  final pulumi.Input<String>? indexName;

  /// argument to specify the [CloudWatch contributor insights mode](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/contributorinsights_HowItWorks.html#contributorinsights_HowItWorks.Modes)
  final pulumi.Input<String>? mode;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The name of the table to enable contributor insights
  final pulumi.Input<String> tableName;

  ContributorInsightsArgs({
    this.indexName,
    this.mode,
    this.region,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final indexNameValue = indexName;
    if (indexNameValue != null) {
      map['indexName'] = indexNameValue;
    }
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['tableName'] = tableName;
    return map;
  }

  factory ContributorInsightsArgs.fromMap(Map<String, dynamic> map) {
    return ContributorInsightsArgs(
      indexName: pulumi.Input.asOptionalInput<String>(map['indexName']),
      mode: pulumi.Input.asOptionalInput<String>(map['mode']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tableName: pulumi.Input.asInput<String>(map['tableName']),
    );
  }
}
