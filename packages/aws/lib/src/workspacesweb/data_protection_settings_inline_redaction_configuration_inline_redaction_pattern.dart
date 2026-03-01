// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_protection_settings_inline_redaction_configuration_inline_redaction_pattern_custom_pattern.dart';
import 'data_protection_settings_inline_redaction_configuration_inline_redaction_pattern_redaction_place_holder.dart';

class DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPattern {
  /// The built-in pattern from the list of preconfigured patterns. Either a `custom_pattern` or `built_in_pattern_id` is required.
  final String? builtInPatternId;

  /// The confidence level for inline redaction pattern. This indicates the certainty of data type matches in the redaction process. Values range from 1 (low confidence) to 3 (high confidence).
  final int? confidenceLevel;

  /// The configuration for a custom pattern. Either a `custom_pattern` or `built_in_pattern_id` is required. Detailed below.
  final DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternCustomPattern?
  customPattern;

  /// The enforced URL configuration for the inline redaction pattern.
  final List<String>? enforcedUrls;

  /// The exempt URL configuration for the inline redaction pattern.
  final List<String>? exemptUrls;

  /// The redaction placeholder that will replace the redacted text in session. Detailed below.
  final List<
    DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolder
  >?
  redactionPlaceHolders;

  /// Creates a new [DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPattern].
  /// [builtInPatternId] The built-in pattern from the list of preconfigured patterns. Either a `custom_pattern` or `built_in_pattern_id` is required.
  /// [confidenceLevel] The confidence level for inline redaction pattern. This indicates the certainty of data type matches in the redaction process. Values range from 1 (low confidence) to 3 (high confidence).
  /// [customPattern] The configuration for a custom pattern. Either a `custom_pattern` or `built_in_pattern_id` is required. Detailed below.
  /// [enforcedUrls] The enforced URL configuration for the inline redaction pattern.
  /// [exemptUrls] The exempt URL configuration for the inline redaction pattern.
  /// [redactionPlaceHolders] The redaction placeholder that will replace the redacted text in session. Detailed below.
  DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPattern({
    this.builtInPatternId,
    this.confidenceLevel,
    this.customPattern,
    this.enforcedUrls,
    this.exemptUrls,
    this.redactionPlaceHolders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builtInPatternId': ?builtInPatternId,
      'confidenceLevel': ?confidenceLevel,
      'customPattern': ?customPattern == null ? null : customPattern!.toMap(),
      'enforcedUrls': ?enforcedUrls,
      'exemptUrls': ?exemptUrls,
      'redactionPlaceHolders': ?redactionPlaceHolders == null
          ? null
          : pulumi.Input.encodeList<
              DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolder,
              Map<String, dynamic>
            >(redactionPlaceHolders!, (value) => value.toMap()),
    };
  }

  factory DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPattern.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPattern(
      builtInPatternId: map['builtInPatternId'] == null
          ? null
          : map['builtInPatternId'] as String,
      confidenceLevel: map['confidenceLevel'] == null
          ? null
          : map['confidenceLevel'] as int,
      customPattern: map['customPattern'] == null
          ? null
          : DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternCustomPattern.fromMap(
              (map['customPattern'] as Map).cast<String, dynamic>(),
            ),
      enforcedUrls: map['enforcedUrls'] == null
          ? null
          : (map['enforcedUrls'] as List).cast<String>(),
      exemptUrls: map['exemptUrls'] == null
          ? null
          : (map['exemptUrls'] as List).cast<String>(),
      redactionPlaceHolders: map['redactionPlaceHolders'] == null
          ? null
          : pulumi.Input.decodeList<
              DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolder
            >(
              map['redactionPlaceHolders'],
              (value) =>
                  DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolder.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
