// ignore_for_file: unused_element, unnecessary_cast

import 'control_control_mapping_source_source_keyword.dart';

class ControlControlMappingSource {
  /// Description of the source.
  final String? sourceDescription;
  /// Frequency of evidence collection. Valid values are `DAILY`, `WEEKLY`, or `MONTHLY`.
  final String? sourceFrequency;
  final String? sourceId;
  /// The keyword to search for in CloudTrail logs, Config rules, Security Hub checks, and Amazon Web Services API names. See `source_keyword` below.
  final ControlControlMappingSourceSourceKeyword? sourceKeyword;
  /// Name of the source.
  final String sourceName;
  /// The setup option for the data source. This option reflects if the evidence collection is automated or manual. Valid values are `System_Controls_Mapping` (automated) and `Procedural_Controls_Mapping` (manual).
  final String sourceSetUpOption;
  /// Type of data source for evidence collection. If `source_set_up_option` is manual, the only valid value is `MANUAL`. If `source_set_up_option` is automated, valid values are `AWS_Cloudtrail`, `AWS_Config`, `AWS_Security_Hub`, or `AWS_API_Call`.
  ///
  /// The following arguments are optional:
  final String sourceType;
  /// Instructions for troubleshooting the control.
  final String? troubleshootingText;

  /// Creates a new [ControlControlMappingSource].
  /// [sourceDescription] Description of the source.
  /// [sourceFrequency] Frequency of evidence collection. Valid values are `DAILY`, `WEEKLY`, or `MONTHLY`.
  /// [sourceId] Optional.
  /// [sourceKeyword] The keyword to search for in CloudTrail logs, Config rules, Security Hub checks, and Amazon Web Services API names. See `source_keyword` below.
  /// [sourceName] Name of the source.
  /// [sourceSetUpOption] The setup option for the data source. This option reflects if the evidence collection is automated or manual. Valid values are `System_Controls_Mapping` (automated) and `Procedural_Controls_Mapping` (manual).
  /// [sourceType] Type of data source for evidence collection. If `source_set_up_option` is manual, the only valid value is `MANUAL`. If `source_set_up_option` is automated, valid values are `AWS_Cloudtrail`, `AWS_Config`, `AWS_Security_Hub`, or `AWS_API_Call`.
  /// [troubleshootingText] Instructions for troubleshooting the control.
  ControlControlMappingSource({
    this.sourceDescription,
    this.sourceFrequency,
    this.sourceId,
    this.sourceKeyword,
    required this.sourceName,
    required this.sourceSetUpOption,
    required this.sourceType,
    this.troubleshootingText,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceDescription': ?sourceDescription,
      'sourceFrequency': ?sourceFrequency,
      'sourceId': ?sourceId,
      'sourceKeyword': ?sourceKeyword == null ? null : sourceKeyword!.toMap(),
      'sourceName': sourceName,
      'sourceSetUpOption': sourceSetUpOption,
      'sourceType': sourceType,
      'troubleshootingText': ?troubleshootingText,
    };
  }

  factory ControlControlMappingSource.fromMap(Map<String, dynamic> map) {
    return ControlControlMappingSource(
      sourceDescription: map['sourceDescription'] == null ? null : map['sourceDescription'] as String,
      sourceFrequency: map['sourceFrequency'] == null ? null : map['sourceFrequency'] as String,
      sourceId: map['sourceId'] == null ? null : map['sourceId'] as String,
      sourceKeyword: map['sourceKeyword'] == null ? null : ControlControlMappingSourceSourceKeyword.fromMap((map['sourceKeyword'] as Map).cast<String, dynamic>()),
      sourceName: map['sourceName'] as String,
      sourceSetUpOption: map['sourceSetUpOption'] as String,
      sourceType: map['sourceType'] as String,
      troubleshootingText: map['troubleshootingText'] == null ? null : map['troubleshootingText'] as String,
    );
  }
}

