// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../data_quality_ruleset_target_table/data_quality_ruleset_target_table.dart';

/// The set of arguments for DataQualityRuleset.
class DataQualityRulesetArgs {
  /// Description of the data quality ruleset.
  final Input<String>? description;

  /// Name of the data quality ruleset.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A Data Quality Definition Language (DQDL) ruleset. For more information, see the AWS Glue developer guide.
  final Input<String> ruleset;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// A Configuration block specifying a target table associated with the data quality ruleset. See <span pulumi-lang-nodejs="`targetTable`" pulumi-lang-dotnet="`TargetTable`" pulumi-lang-go="`targetTable`" pulumi-lang-python="`target_table`" pulumi-lang-yaml="`targetTable`" pulumi-lang-java="`targetTable`">`target_table`</span> below.
  final Input<DataQualityRulesetTargetTable>? targetTable;

  DataQualityRulesetArgs({
    this.description,
    this.name,
    this.region,
    required this.ruleset,
    this.tags,
    this.targetTable,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['ruleset'] = ruleset;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final targetTableValue = targetTable;
    if (targetTableValue != null) {
      map['targetTable'] = Input.mapOptionalInputValue<
          DataQualityRulesetTargetTable,
          Map<String, dynamic>>(targetTableValue, (value) => value.toMap());
    }
    return map;
  }

  factory DataQualityRulesetArgs.fromMap(Map<String, dynamic> map) {
    return DataQualityRulesetArgs(
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      ruleset: Input.asInput<String>(map['ruleset']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      targetTable: Input.asOptionalInput<DataQualityRulesetTargetTable>(
          map['targetTable']),
    );
  }
}
