// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'archive_rule.dart';
import 'tag.dart';
import 'unused_access_configuration.dart';

/// Definition of awsAccessAnalyzerAnalyzer
class AwsAccessAnalyzerAnalyzerProperties {
  /// The configuration for the analyzer
  final pulumi.Input<UnusedAccessConfiguration>? analyzerConfiguration;
  /// Analyzer name
  final pulumi.Input<String>? analyzerName;
  /// Property archiveRules
  final pulumi.Input<List<ArchiveRule>>? archiveRules;
  /// Amazon Resource Name (ARN) of the analyzer
  final pulumi.Input<String>? arn;
  /// An array of key-value pairs to apply to this resource.
  final pulumi.Input<List<Tag>>? tags;
  /// The type of the analyzer, must be one of ACCOUNT, ORGANIZATION, ACCOUNT_UNUSED_ACCESS or ORGANIZATION_UNUSED_ACCESS
  final pulumi.Input<String>? type;

  /// Creates a new [AwsAccessAnalyzerAnalyzerProperties].
  /// [analyzerConfiguration] The configuration for the analyzer
  /// [analyzerName] Analyzer name
  /// [archiveRules] Property archiveRules
  /// [arn] Amazon Resource Name (ARN) of the analyzer
  /// [tags] An array of key-value pairs to apply to this resource.
  /// [type] The type of the analyzer, must be one of ACCOUNT, ORGANIZATION, ACCOUNT_UNUSED_ACCESS or ORGANIZATION_UNUSED_ACCESS
  const AwsAccessAnalyzerAnalyzerProperties({
    this.analyzerConfiguration,
    this.analyzerName,
    this.archiveRules,
    this.arn,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analyzerConfiguration': ?pulumi.Input.mapOptionalInputValue<UnusedAccessConfiguration, Map<String, dynamic>>(analyzerConfiguration, (value) => value.toMap()),
      'analyzerName': ?analyzerName,
      'archiveRules': ?pulumi.Input.mapOptionalInputValue<List<ArchiveRule>, List<Map<String, dynamic>>>(archiveRules, (value) => pulumi.Input.encodeList<ArchiveRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'arn': ?arn,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<Tag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<Tag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
    };
  }

  factory AwsAccessAnalyzerAnalyzerProperties.fromMap(Map<String, dynamic> map) {
    return AwsAccessAnalyzerAnalyzerProperties(
      analyzerConfiguration: (() { final guardedValue = map['analyzerConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UnusedAccessConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      analyzerName: (() { final guardedValue = map['analyzerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      archiveRules: (() { final guardedValue = map['archiveRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ArchiveRule>(guardedValue, (value) => ArchiveRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Tag>(guardedValue, (value) => Tag.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
