// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_protection_settings_inline_redaction_configuration_inline_redaction_pattern.dart';

class DataProtectionSettingsInlineRedactionConfiguration {
  /// The global confidence level for the inline redaction configuration. This indicates the certainty of data type matches in the redaction process. Values range from 1 (low confidence) to 3 (high confidence).
  final pulumi.Input<int>? globalConfidenceLevel;
  /// The global enforced URL configuration for the inline redaction configuration.
  final pulumi.Input<List<String>>? globalEnforcedUrls;
  /// The global exempt URL configuration for the inline redaction configuration.
  final pulumi.Input<List<String>>? globalExemptUrls;
  /// The inline redaction patterns to be enabled for the inline redaction configuration. Detailed below.
  final pulumi.Input<List<DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPattern>> inlineRedactionPatterns;

  /// Creates a new [DataProtectionSettingsInlineRedactionConfiguration].
  /// [globalConfidenceLevel] The global confidence level for the inline redaction configuration. This indicates the certainty of data type matches in the redaction process. Values range from 1 (low confidence) to 3 (high confidence).
  /// [globalEnforcedUrls] The global enforced URL configuration for the inline redaction configuration.
  /// [globalExemptUrls] The global exempt URL configuration for the inline redaction configuration.
  /// [inlineRedactionPatterns] The inline redaction patterns to be enabled for the inline redaction configuration. Detailed below.
  DataProtectionSettingsInlineRedactionConfiguration({
    this.globalConfidenceLevel,
    this.globalEnforcedUrls,
    this.globalExemptUrls,
    required this.inlineRedactionPatterns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalConfidenceLevel': ?globalConfidenceLevel,
      'globalEnforcedUrls': ?globalEnforcedUrls,
      'globalExemptUrls': ?globalExemptUrls,
      'inlineRedactionPatterns': pulumi.Input.mapInputValue<List<DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPattern>, List<Map<String, dynamic>>>(inlineRedactionPatterns, (value) => pulumi.Input.encodeList<DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPattern, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DataProtectionSettingsInlineRedactionConfiguration.fromMap(Map<String, dynamic> map) {
    return DataProtectionSettingsInlineRedactionConfiguration(
      globalConfidenceLevel: map['globalConfidenceLevel'] == null ? null : ((map['globalConfidenceLevel'] as int).input()).input(),
      globalEnforcedUrls: map['globalEnforcedUrls'] == null ? null : (((map['globalEnforcedUrls'] as List).cast<String>()).input()).input(),
      globalExemptUrls: map['globalExemptUrls'] == null ? null : (((map['globalExemptUrls'] as List).cast<String>()).input()).input(),
      inlineRedactionPatterns: (pulumi.Input.decodeList<DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPattern>(map['inlineRedactionPatterns']!, (value) => DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPattern.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

