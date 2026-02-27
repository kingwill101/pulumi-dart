import 'package:pulumi/pulumi.dart';
import '../analyzer_configuration/analyzer_configuration.dart';
import 'analyzer_args.dart';

/// Manages an Access Analyzer Analyzer. More information can be found in the [Access Analyzer User Guide](https://docs.aws.amazon.com/IAM/latest/UserGuide/what-is-access-analyzer.html).
///
/// ## Example Usage
///
/// ### Account Analyzer
///
///
///
/// ### Organization Analyzer
///
///
///
/// ### Organization Unused Access Analyzer With Analysis Rule
///
///
///
/// ### Account Internal Access Analyzer by Resource Types
///
///
///
/// ### Organization Internal Access Analyzer by Account ID and Resource ARN
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Access Analyzer Analyzers using the `analyzer_name`. For example:
///
/// ```sh
/// $ pulumi import aws:accessanalyzer/analyzer:Analyzer example example
/// ```
class Analyzer extends CustomResource {
  /// Name of the Analyzer.
  ///
  /// The following arguments are optional:
  late final Output<String> analyzerName;

  /// ARN of the Analyzer.
  late final Output<String> arn;

  /// A block that specifies the configuration of the analyzer. See `configuration` Block for details.
  late final Output<AnalyzerConfiguration?> configuration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Type that represents the zone of trust or scope for the analyzer. Valid values are `ACCOUNT`, `ACCOUNT_INTERNAL_ACCESS`, `ACCOUNT_UNUSED_ACCESS`, `ORGANIZATION`, `ORGANIZATION_INTERNAL_ACCESS`, `ORGANIZATION_UNUSED_ACCESS`. Defaults to `ACCOUNT`.
  late final Output<String?> type;

  Analyzer(
    String name, {
    AnalyzerArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:accessanalyzer/analyzer:Analyzer',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.analyzerName = registerOutput<String>('analyzerName');
    this.arn = registerOutput<String>('arn');
    this.configuration =
        registerOutput<AnalyzerConfiguration?>('configuration');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String?>('type');
  }
}
