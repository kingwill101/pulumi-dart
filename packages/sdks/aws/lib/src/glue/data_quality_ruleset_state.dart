// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_quality_ruleset_target_table.dart';

/// Input properties used for looking up and filtering DataQualityRuleset resources.
class DataQualityRulesetState {
  /// ARN of the Glue Data Quality Ruleset.
  final pulumi.Input<String>? arn;
  /// The time and date that this data quality ruleset was created.
  final pulumi.Input<String>? createdOn;
  /// Description of the data quality ruleset.
  final pulumi.Input<String>? description;
  /// The time and date that this data quality ruleset was created.
  final pulumi.Input<String>? lastModifiedOn;
  /// Name of the data quality ruleset.
  final pulumi.Input<String>? name;
  /// When a ruleset was created from a recommendation run, this run ID is generated to link the two together.
  final pulumi.Input<String>? recommendationRunId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A Data Quality Definition Language (DQDL) ruleset. For more information, see the AWS Glue developer guide.
  final pulumi.Input<String>? ruleset;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// A Configuration block specifying a target table associated with the data quality ruleset. See `target_table` below.
  final pulumi.Input<DataQualityRulesetTargetTable>? targetTable;

  /// Creates a new [DataQualityRulesetState].
  /// [arn] ARN of the Glue Data Quality Ruleset.
  /// [createdOn] The time and date that this data quality ruleset was created.
  /// [description] Description of the data quality ruleset.
  /// [lastModifiedOn] The time and date that this data quality ruleset was created.
  /// [name] Name of the data quality ruleset.
  /// [recommendationRunId] When a ruleset was created from a recommendation run, this run ID is generated to link the two together.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [ruleset] A Data Quality Definition Language (DQDL) ruleset. For more information, see the AWS Glue developer guide.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [targetTable] A Configuration block specifying a target table associated with the data quality ruleset. See `target_table` below.
  DataQualityRulesetState({
    this.arn,
    this.createdOn,
    this.description,
    this.lastModifiedOn,
    this.name,
    this.recommendationRunId,
    this.region,
    this.ruleset,
    this.tags,
    this.tagsAll,
    this.targetTable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdOn': ?createdOn,
      'description': ?description,
      'lastModifiedOn': ?lastModifiedOn,
      'name': ?name,
      'recommendationRunId': ?recommendationRunId,
      'region': ?region,
      'ruleset': ?ruleset,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'targetTable': ?pulumi.Input.mapOptionalInputValue<DataQualityRulesetTargetTable, Map<String, dynamic>>(targetTable, (value) => value.toMap()),
    };
  }

  factory DataQualityRulesetState.fromMap(Map<String, dynamic> map) {
    return DataQualityRulesetState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      createdOn: map['createdOn'] == null ? null : (map['createdOn'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      lastModifiedOn: map['lastModifiedOn'] == null ? null : (map['lastModifiedOn'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      recommendationRunId: map['recommendationRunId'] == null ? null : (map['recommendationRunId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      ruleset: map['ruleset'] == null ? null : (map['ruleset'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      targetTable: map['targetTable'] == null ? null : (DataQualityRulesetTargetTable.fromMap((map['targetTable'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

