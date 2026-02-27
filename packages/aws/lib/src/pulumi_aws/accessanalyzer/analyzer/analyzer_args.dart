// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../analyzer_configuration/analyzer_configuration.dart';

/// The set of arguments for Analyzer.
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

  AnalyzerArgs({
    required this.analyzerName,
    this.configuration,
    this.region,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['analyzerName'] = analyzerName;
    final configurationValue = configuration;
    if (configurationValue != null) {
      map['configuration'] = pulumi.Input.mapOptionalInputValue<
          AnalyzerConfiguration,
          Map<String, dynamic>>(configurationValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory AnalyzerArgs.fromMap(Map<String, dynamic> map) {
    return AnalyzerArgs(
      analyzerName: pulumi.Input.asInput<String>(map['analyzerName']),
      configuration: pulumi.Input.asOptionalInput<AnalyzerConfiguration>(
          map['configuration']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      type: pulumi.Input.asOptionalInput<String>(map['type']),
    );
  }
}
