import 'package:pulumi/pulumi.dart';
import '../data_quality_ruleset_target_table/data_quality_ruleset_target_table.dart';
import 'data_quality_ruleset_args.dart';

/// Provides a Glue Data Quality Ruleset Resource. You can refer to the [Glue Developer Guide](https://docs.aws.amazon.com/glue/latest/dg/glue-data-quality.html) for a full explanation of the Glue Data Quality Ruleset functionality
///
/// ## Example Usage
///
/// ### Basic
///
///
///
/// ### With description
///
///
///
/// ### With tags
///
///
///
/// ### With target_table
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Glue Data Quality Ruleset using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:glue/dataQualityRuleset:DataQualityRuleset example exampleName
/// ```
class DataQualityRuleset extends CustomResource {
  /// ARN of the Glue Data Quality Ruleset.
  late final Output<String> arn;

  /// The time and date that this data quality ruleset was created.
  late final Output<String> createdOn;

  /// Description of the data quality ruleset.
  late final Output<String?> description;

  /// The time and date that this data quality ruleset was created.
  late final Output<String> lastModifiedOn;

  /// Name of the data quality ruleset.
  late final Output<String> name;

  /// When a ruleset was created from a recommendation run, this run ID is generated to link the two together.
  late final Output<String> recommendationRunId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A Data Quality Definition Language (DQDL) ruleset. For more information, see the AWS Glue developer guide.
  late final Output<String> ruleset;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// A Configuration block specifying a target table associated with the data quality ruleset. See `target_table` below.
  late final Output<DataQualityRulesetTargetTable?> targetTable;

  DataQualityRuleset(
    String name, {
    DataQualityRulesetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:glue/dataQualityRuleset:DataQualityRuleset',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.createdOn = registerOutput<String>('createdOn');
    this.description = registerOutput<String?>('description');
    this.lastModifiedOn = registerOutput<String>('lastModifiedOn');
    this.name = registerOutput<String>('name');
    this.recommendationRunId = registerOutput<String>('recommendationRunId');
    this.region = registerOutput<String>('region');
    this.ruleset = registerOutput<String>('ruleset');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targetTable =
        registerOutput<DataQualityRulesetTargetTable?>('targetTable');
  }
}
