// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analyzer_configuration.dart';

/// Input properties used for looking up and filtering Analyzer resources.
class AnalyzerState {
  /// Name of the Analyzer.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? analyzerName;
  /// ARN of the Analyzer.
  final pulumi.Input<String>? arn;
  /// A block that specifies the configuration of the analyzer. See `configuration` Block for details.
  final pulumi.Input<AnalyzerConfiguration>? configuration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Type that represents the zone of trust or scope for the analyzer. Valid values are `ACCOUNT`, `ACCOUNT_INTERNAL_ACCESS`, `ACCOUNT_UNUSED_ACCESS`, `ORGANIZATION`, `ORGANIZATION_INTERNAL_ACCESS`, `ORGANIZATION_UNUSED_ACCESS`. Defaults to `ACCOUNT`.
  final pulumi.Input<String>? type;

  /// Creates a new [AnalyzerState].
  /// [analyzerName] Name of the Analyzer.
  /// [arn] ARN of the Analyzer.
  /// [configuration] A block that specifies the configuration of the analyzer. See `configuration` Block for details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [type] Type that represents the zone of trust or scope for the analyzer. Valid values are `ACCOUNT`, `ACCOUNT_INTERNAL_ACCESS`, `ACCOUNT_UNUSED_ACCESS`, `ORGANIZATION`, `ORGANIZATION_INTERNAL_ACCESS`, `ORGANIZATION_UNUSED_ACCESS`. Defaults to `ACCOUNT`.
  AnalyzerState({
    pulumi.Output<String>? analyzerName,
    pulumi.Output<String>? arn,
    pulumi.Output<AnalyzerConfiguration>? configuration,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? type,
  }) :
      analyzerName = pulumi.Input.asOptionalInput<String>(analyzerName),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      configuration = pulumi.Input.asOptionalInput<AnalyzerConfiguration>(configuration),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analyzerName': ?analyzerName,
      'arn': ?arn,
      'configuration': ?pulumi.Input.mapOptionalInputValue<AnalyzerConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'type': ?type,
    };
  }

  factory AnalyzerState.fromMap(Map<String, dynamic> map) {
    return AnalyzerState(
      analyzerName: map['analyzerName'] == null ? null : pulumi.Output.create<String>(map['analyzerName'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      configuration: map['configuration'] == null ? null : pulumi.Output.create<AnalyzerConfiguration>(AnalyzerConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

