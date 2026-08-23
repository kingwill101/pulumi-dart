// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_protection_settings_inline_redaction_configuration_inline_redaction_pattern_custom_pattern.dart';
import 'data_protection_settings_inline_redaction_configuration_inline_redaction_pattern_redaction_place_holder.dart';

class DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPattern {
  /// The built-in pattern from the list of preconfigured patterns. Either a `customPattern` or `builtInPatternId` is required.
  final pulumi.Input<String>? builtInPatternId;
  /// The confidence level for inline redaction pattern. This indicates the certainty of data type matches in the redaction process. Values range from 1 (low confidence) to 3 (high confidence).
  final pulumi.Input<int>? confidenceLevel;
  /// The configuration for a custom pattern. Either a `customPattern` or `builtInPatternId` is required. Detailed below.
  final pulumi.Input<DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternCustomPattern>? customPattern;
  /// The enforced URL configuration for the inline redaction pattern.
  final pulumi.Input<List<String>>? enforcedUrls;
  /// The exempt URL configuration for the inline redaction pattern.
  final pulumi.Input<List<String>>? exemptUrls;
  /// The redaction placeholder that will replace the redacted text in session. Detailed below.
  final pulumi.Input<List<DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolder>>? redactionPlaceHolders;

  /// Creates a new [DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPattern].
  /// [builtInPatternId] The built-in pattern from the list of preconfigured patterns. Either a `customPattern` or `builtInPatternId` is required.
  /// [confidenceLevel] The confidence level for inline redaction pattern. This indicates the certainty of data type matches in the redaction process. Values range from 1 (low confidence) to 3 (high confidence).
  /// [customPattern] The configuration for a custom pattern. Either a `customPattern` or `builtInPatternId` is required. Detailed below.
  /// [enforcedUrls] The enforced URL configuration for the inline redaction pattern.
  /// [exemptUrls] The exempt URL configuration for the inline redaction pattern.
  /// [redactionPlaceHolders] The redaction placeholder that will replace the redacted text in session. Detailed below.
  const DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPattern({
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
      'customPattern': ?pulumi.Input.mapOptionalInputValue<DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternCustomPattern, Map<String, dynamic>>(customPattern, (value) => value.toMap()),
      'enforcedUrls': ?enforcedUrls,
      'exemptUrls': ?exemptUrls,
      'redactionPlaceHolders': ?pulumi.Input.mapOptionalInputValue<List<DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolder>, List<Map<String, dynamic>>>(redactionPlaceHolders, (value) => pulumi.Input.encodeList<DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolder, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPattern.fromMap(Map<String, dynamic> map) {
    return DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPattern(
      builtInPatternId: (() { final guardedValue = map['builtInPatternId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      confidenceLevel: (() { final guardedValue = map['confidenceLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      customPattern: (() { final guardedValue = map['customPattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternCustomPattern.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enforcedUrls: (() { final guardedValue = map['enforcedUrls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      exemptUrls: (() { final guardedValue = map['exemptUrls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      redactionPlaceHolders: (() { final guardedValue = map['redactionPlaceHolders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolder>(guardedValue, (value) => DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolder.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
