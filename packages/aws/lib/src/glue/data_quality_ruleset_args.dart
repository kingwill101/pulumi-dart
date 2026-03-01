// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_quality_ruleset_target_table.dart';

/// {@template pulumi_glue_data_quality_ruleset_data_quality_ruleset_args_doc}
/// The set of arguments for DataQualityRuleset.
/// {@endtemplate}
/// {@macro pulumi_glue_data_quality_ruleset_data_quality_ruleset_args_doc}
class DataQualityRulesetArgs {
  /// Description of the data quality ruleset.
  final pulumi.Input<String>? description;

  /// Name of the data quality ruleset.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A Data Quality Definition Language (DQDL) ruleset. For more information, see the AWS Glue developer guide.
  final pulumi.Input<String> ruleset;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// A Configuration block specifying a target table associated with the data quality ruleset. See `target_table` below.
  final pulumi.Input<DataQualityRulesetTargetTable>? targetTable;

  /// Creates a new [DataQualityRulesetArgs].
  /// [description] Description of the data quality ruleset.
  /// [name] Name of the data quality ruleset.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [ruleset] A Data Quality Definition Language (DQDL) ruleset. For more information, see the AWS Glue developer guide.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [targetTable] A Configuration block specifying a target table associated with the data quality ruleset. See `target_table` below.
  DataQualityRulesetArgs({
    String? description,
    String? name,
    String? region,
    required String ruleset,
    Map<String, String>? tags,
    DataQualityRulesetTargetTable? targetTable,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       name = pulumi.Input.asOptionalInput<String>(name),
       region = pulumi.Input.asOptionalInput<String>(region),
       ruleset = pulumi.Input.asInput<String>(ruleset),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       targetTable = pulumi
           .Input.asOptionalInput<DataQualityRulesetTargetTable>(targetTable);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'ruleset': ruleset,
      'tags': ?tags,
      'targetTable':
          ?pulumi.Input.mapOptionalInputValue<
            DataQualityRulesetTargetTable,
            Map<String, dynamic>
          >(targetTable, (value) => value.toMap()),
    };
  }

  factory DataQualityRulesetArgs.fromMap(Map<String, dynamic> map) {
    return DataQualityRulesetArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      ruleset: map['ruleset'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      targetTable: map['targetTable'] == null
          ? null
          : DataQualityRulesetTargetTable.fromMap(
              (map['targetTable'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
