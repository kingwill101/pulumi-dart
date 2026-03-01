// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'archive_rule.dart';
import 'tag.dart';
import 'unused_access_configuration.dart';

/// Definition of awsAccessAnalyzerAnalyzer
class AwsAccessAnalyzerAnalyzerProperties {
  /// The configuration for the analyzer
  final UnusedAccessConfiguration? analyzerConfiguration;
  /// Analyzer name
  final String? analyzerName;
  /// Property archiveRules
  final List<ArchiveRule>? archiveRules;
  /// Amazon Resource Name (ARN) of the analyzer
  final String? arn;
  /// An array of key-value pairs to apply to this resource.
  final List<Tag>? tags;
  /// The type of the analyzer, must be one of ACCOUNT, ORGANIZATION, ACCOUNT_UNUSED_ACCESS or ORGANIZATION_UNUSED_ACCESS
  final String? type;

  /// Creates a new [AwsAccessAnalyzerAnalyzerProperties].
  /// [analyzerConfiguration] The configuration for the analyzer
  /// [analyzerName] Analyzer name
  /// [archiveRules] Property archiveRules
  /// [arn] Amazon Resource Name (ARN) of the analyzer
  /// [tags] An array of key-value pairs to apply to this resource.
  /// [type] The type of the analyzer, must be one of ACCOUNT, ORGANIZATION, ACCOUNT_UNUSED_ACCESS or ORGANIZATION_UNUSED_ACCESS
  AwsAccessAnalyzerAnalyzerProperties({
    this.analyzerConfiguration,
    this.analyzerName,
    this.archiveRules,
    this.arn,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analyzerConfiguration': ?analyzerConfiguration == null ? null : analyzerConfiguration!.toMap(),
      'analyzerName': ?analyzerName,
      'archiveRules': ?archiveRules == null ? null : pulumi.Input.encodeList<ArchiveRule, Map<String, dynamic>>(archiveRules!, (value) => value.toMap()),
      'arn': ?arn,
      'tags': ?tags == null ? null : pulumi.Input.encodeList<Tag, Map<String, dynamic>>(tags!, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory AwsAccessAnalyzerAnalyzerProperties.fromMap(Map<String, dynamic> map) {
    return AwsAccessAnalyzerAnalyzerProperties(
      analyzerConfiguration: map['analyzerConfiguration'] == null ? null : UnusedAccessConfiguration.fromMap((map['analyzerConfiguration'] as Map).cast<String, dynamic>()),
      analyzerName: map['analyzerName'] == null ? null : map['analyzerName'] as String,
      archiveRules: map['archiveRules'] == null ? null : pulumi.Input.decodeList<ArchiveRule>(map['archiveRules'], (value) => ArchiveRule.fromMap((value as Map).cast<String, dynamic>())),
      arn: map['arn'] == null ? null : map['arn'] as String,
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<Tag>(map['tags'], (value) => Tag.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

