// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analyzer_configuration.dart';

/// {@template pulumi_accessanalyzer_analyzer_analyzer_args_doc}
/// The set of arguments for Analyzer.
/// {@endtemplate}
/// {@macro pulumi_accessanalyzer_analyzer_analyzer_args_doc}
class AnalyzerArgs {
  /// Name of the Analyzer.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> analyzerName;
  /// A block that specifies the configuration of the analyzer. See `configuration` Block for details.
  final pulumi.Input<AnalyzerConfiguration>? configuration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Type that represents the zone of trust or scope for the analyzer. Valid values are `ACCOUNT`, `ACCOUNT_INTERNAL_ACCESS`, `ACCOUNT_UNUSED_ACCESS`, `ORGANIZATION`, `ORGANIZATION_INTERNAL_ACCESS`, `ORGANIZATION_UNUSED_ACCESS`. Defaults to `ACCOUNT`.
  final pulumi.Input<String>? type;

  /// Creates a new [AnalyzerArgs].
  /// [analyzerName] Name of the Analyzer.
  /// [configuration] A block that specifies the configuration of the analyzer. See `configuration` Block for details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [type] Type that represents the zone of trust or scope for the analyzer. Valid values are `ACCOUNT`, `ACCOUNT_INTERNAL_ACCESS`, `ACCOUNT_UNUSED_ACCESS`, `ORGANIZATION`, `ORGANIZATION_INTERNAL_ACCESS`, `ORGANIZATION_UNUSED_ACCESS`. Defaults to `ACCOUNT`.
  AnalyzerArgs({
    required String analyzerName,
    AnalyzerConfiguration? configuration,
    String? region,
    Map<String, String>? tags,
    String? type,
  }) :
      analyzerName = pulumi.Input.asInput<String>(analyzerName),
      configuration = pulumi.Input.asOptionalInput<AnalyzerConfiguration>(configuration),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analyzerName': analyzerName,
      'configuration': ?pulumi.Input.mapOptionalInputValue<AnalyzerConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory AnalyzerArgs.fromMap(Map<String, dynamic> map) {
    return AnalyzerArgs(
      analyzerName: map['analyzerName'] as String,
      configuration: map['configuration'] == null ? null : AnalyzerConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

