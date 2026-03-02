// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'archive_rule_response.dart';
import 'tag_response.dart';
import 'unused_access_configuration_response.dart';

/// Definition of awsAccessAnalyzerAnalyzer
class AwsAccessAnalyzerAnalyzerPropertiesResponse {
  /// The configuration for the analyzer
  final pulumi.Input<UnusedAccessConfigurationResponse>? analyzerConfiguration;
  /// Analyzer name
  final pulumi.Input<String>? analyzerName;
  /// Property archiveRules
  final pulumi.Input<List<ArchiveRuleResponse>>? archiveRules;
  /// Amazon Resource Name (ARN) of the analyzer
  final pulumi.Input<String>? arn;
  /// An array of key-value pairs to apply to this resource.
  final pulumi.Input<List<TagResponse>>? tags;
  /// The type of the analyzer, must be one of ACCOUNT, ORGANIZATION, ACCOUNT_UNUSED_ACCESS or ORGANIZATION_UNUSED_ACCESS
  final pulumi.Input<String>? type;

  /// Creates a new [AwsAccessAnalyzerAnalyzerPropertiesResponse].
  /// [analyzerConfiguration] The configuration for the analyzer
  /// [analyzerName] Analyzer name
  /// [archiveRules] Property archiveRules
  /// [arn] Amazon Resource Name (ARN) of the analyzer
  /// [tags] An array of key-value pairs to apply to this resource.
  /// [type] The type of the analyzer, must be one of ACCOUNT, ORGANIZATION, ACCOUNT_UNUSED_ACCESS or ORGANIZATION_UNUSED_ACCESS
  AwsAccessAnalyzerAnalyzerPropertiesResponse({
    this.analyzerConfiguration,
    this.analyzerName,
    this.archiveRules,
    this.arn,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analyzerConfiguration': ?pulumi.Input.mapOptionalInputValue<UnusedAccessConfigurationResponse, Map<String, dynamic>>(analyzerConfiguration, (value) => value.toMap()),
      'analyzerName': ?analyzerName,
      'archiveRules': ?pulumi.Input.mapOptionalInputValue<List<ArchiveRuleResponse>, List<Map<String, dynamic>>>(archiveRules, (value) => pulumi.Input.encodeList<ArchiveRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'arn': ?arn,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<TagResponse>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
    };
  }

  factory AwsAccessAnalyzerAnalyzerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsAccessAnalyzerAnalyzerPropertiesResponse(
      analyzerConfiguration: map['analyzerConfiguration'] == null ? null : (UnusedAccessConfigurationResponse.fromMap((map['analyzerConfiguration']! as Map).cast<String, dynamic>())).input(),
      analyzerName: map['analyzerName'] == null ? null : (map['analyzerName']! as String).input(),
      archiveRules: map['archiveRules'] == null ? null : (pulumi.Input.decodeList<ArchiveRuleResponse>(map['archiveRules']!, (value) => ArchiveRuleResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      arn: map['arn'] == null ? null : (map['arn']! as String).input(),
      tags: map['tags'] == null ? null : (pulumi.Input.decodeList<TagResponse>(map['tags']!, (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

