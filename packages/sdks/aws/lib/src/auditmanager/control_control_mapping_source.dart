// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'control_control_mapping_source_source_keyword.dart';

class ControlControlMappingSource {
  /// Description of the source.
  final pulumi.Input<String>? sourceDescription;

  /// Frequency of evidence collection. Valid values are `DAILY`, `WEEKLY`, or `MONTHLY`.
  final pulumi.Input<String>? sourceFrequency;
  final pulumi.Input<String>? sourceId;

  /// The keyword to search for in CloudTrail logs, Config rules, Security Hub checks, and Amazon Web Services API names. See `source_keyword` below.
  final pulumi.Input<ControlControlMappingSourceSourceKeyword>? sourceKeyword;

  /// Name of the source.
  final pulumi.Input<String> sourceName;

  /// The setup option for the data source. This option reflects if the evidence collection is automated or manual. Valid values are `System_Controls_Mapping` (automated) and `Procedural_Controls_Mapping` (manual).
  final pulumi.Input<String> sourceSetUpOption;

  /// Type of data source for evidence collection. If `source_set_up_option` is manual, the only valid value is `MANUAL`. If `source_set_up_option` is automated, valid values are `AWS_Cloudtrail`, `AWS_Config`, `AWS_Security_Hub`, or `AWS_API_Call`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> sourceType;

  /// Instructions for troubleshooting the control.
  final pulumi.Input<String>? troubleshootingText;

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
      'sourceKeyword':
          ?pulumi.Input.mapOptionalInputValue<
            ControlControlMappingSourceSourceKeyword,
            Map<String, dynamic>
          >(sourceKeyword, (value) => value.toMap()),
      'sourceName': sourceName,
      'sourceSetUpOption': sourceSetUpOption,
      'sourceType': sourceType,
      'troubleshootingText': ?troubleshootingText,
    };
  }

  factory ControlControlMappingSource.fromMap(Map<String, dynamic> map) {
    return ControlControlMappingSource(
      sourceDescription: (() {
        final guardedValue = map['sourceDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceFrequency: (() {
        final guardedValue = map['sourceFrequency'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceId: (() {
        final guardedValue = map['sourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceKeyword: (() {
        final guardedValue = map['sourceKeyword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ControlControlMappingSourceSourceKeyword.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sourceName: pulumi.Input.fromValue(map['sourceName'] as String),
      sourceSetUpOption: pulumi.Input.fromValue(
        map['sourceSetUpOption'] as String,
      ),
      sourceType: pulumi.Input.fromValue(map['sourceType'] as String),
      troubleshootingText: (() {
        final guardedValue = map['troubleshootingText'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
