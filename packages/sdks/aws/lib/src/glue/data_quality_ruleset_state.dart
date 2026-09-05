// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_quality_ruleset_target_table.dart';

/// Input properties used for looking up and filtering DataQualityRuleset resources.
class DataQualityRulesetState {
  /// ARN of the Glue Data Quality Ruleset.
  final pulumi.Input<String?>? arn;
  /// The time and date that this data quality ruleset was created.
  final pulumi.Input<String?>? createdOn;
  /// Description of the data quality ruleset.
  final pulumi.Input<String?>? description;
  /// The time and date that this data quality ruleset was created.
  final pulumi.Input<String?>? lastModifiedOn;
  /// Name of the data quality ruleset.
  final pulumi.Input<String?>? name;
  /// When a ruleset was created from a recommendation run, this run ID is generated to link the two together.
  final pulumi.Input<String?>? recommendationRunId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// A Data Quality Definition Language (DQDL) ruleset. For more information, see the AWS Glue developer guide.
  final pulumi.Input<String?>? ruleset;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// A Configuration block specifying a target table associated with the data quality ruleset. See `targetTable` below.
  final pulumi.Input<DataQualityRulesetTargetTable?>? targetTable;

  /// Creates a new [DataQualityRulesetState].
  /// [arn] ARN of the Glue Data Quality Ruleset.
  /// [createdOn] The time and date that this data quality ruleset was created.
  /// [description] Description of the data quality ruleset.
  /// [lastModifiedOn] The time and date that this data quality ruleset was created.
  /// [name] Name of the data quality ruleset.
  /// [recommendationRunId] When a ruleset was created from a recommendation run, this run ID is generated to link the two together.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [ruleset] A Data Quality Definition Language (DQDL) ruleset. For more information, see the AWS Glue developer guide.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [targetTable] A Configuration block specifying a target table associated with the data quality ruleset. See `targetTable` below.
  const DataQualityRulesetState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastModifiedOn: (() { final guardedValue = map['lastModifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recommendationRunId: (() { final guardedValue = map['recommendationRunId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleset: (() { final guardedValue = map['ruleset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetTable: (() { final guardedValue = map['targetTable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataQualityRulesetTargetTable.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
