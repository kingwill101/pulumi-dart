import 'package:pulumi/pulumi.dart';
import '../archive_rule_filter/archive_rule_filter.dart';
import 'archive_rule_args.dart';

/// Resource for managing an AWS AccessAnalyzer Archive Rule.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import AccessAnalyzer ArchiveRule using the `analyzer_name/rule_name`. For example:
///
/// ```sh
/// $ pulumi import aws:accessanalyzer/archiveRule:ArchiveRule example example-analyzer/example-rule
/// ```
class ArchiveRule extends CustomResource {
  /// Analyzer name.
  late final Output<String> analyzerName;

  /// Filter criteria for the archive rule. See Filter for more details.
  late final Output<List<ArchiveRuleFilter>> filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Rule name.
  late final Output<String> ruleName;

  ArchiveRule(
    String name, {
    ArchiveRuleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:accessanalyzer/archiveRule:ArchiveRule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.analyzerName = registerOutput<String>('analyzerName');
    this.filters = registerOutput<List<ArchiveRuleFilter>>('filters');
    this.region = registerOutput<String>('region');
    this.ruleName = registerOutput<String>('ruleName');
  }
}
