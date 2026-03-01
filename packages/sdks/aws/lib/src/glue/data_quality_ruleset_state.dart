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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? createdOn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? lastModifiedOn,
    pulumi.Output<String>? name,
    pulumi.Output<String>? recommendationRunId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? ruleset,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<DataQualityRulesetTargetTable>? targetTable,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      createdOn = pulumi.Input.asOptionalInput<String>(createdOn),
      description = pulumi.Input.asOptionalInput<String>(description),
      lastModifiedOn = pulumi.Input.asOptionalInput<String>(lastModifiedOn),
      name = pulumi.Input.asOptionalInput<String>(name),
      recommendationRunId = pulumi.Input.asOptionalInput<String>(recommendationRunId),
      region = pulumi.Input.asOptionalInput<String>(region),
      ruleset = pulumi.Input.asOptionalInput<String>(ruleset),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      targetTable = pulumi.Input.asOptionalInput<DataQualityRulesetTargetTable>(targetTable);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      createdOn: map['createdOn'] == null ? null : pulumi.Output.create<String>(map['createdOn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      lastModifiedOn: map['lastModifiedOn'] == null ? null : pulumi.Output.create<String>(map['lastModifiedOn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      recommendationRunId: map['recommendationRunId'] == null ? null : pulumi.Output.create<String>(map['recommendationRunId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      ruleset: map['ruleset'] == null ? null : pulumi.Output.create<String>(map['ruleset'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      targetTable: map['targetTable'] == null ? null : pulumi.Output.create<DataQualityRulesetTargetTable>(DataQualityRulesetTargetTable.fromMap((map['targetTable'] as Map).cast<String, dynamic>())),
    );
  }
}

