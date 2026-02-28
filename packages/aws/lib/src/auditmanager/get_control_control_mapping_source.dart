// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_control_mapping_source_source_keyword.dart';

class GetControlControlMappingSource {
  final String sourceDescription;
  final String sourceFrequency;
  final String sourceId;
  final List<GetControlControlMappingSourceSourceKeyword> sourceKeywords;
  final String sourceName;
  final String sourceSetUpOption;
  final String sourceType;
  final String troubleshootingText;

  /// Creates a new [GetControlControlMappingSource].
  /// [sourceDescription] Required.
  /// [sourceFrequency] Required.
  /// [sourceId] Required.
  /// [sourceKeywords] Required.
  /// [sourceName] Required.
  /// [sourceSetUpOption] Required.
  /// [sourceType] Required.
  /// [troubleshootingText] Required.
  GetControlControlMappingSource({
    required this.sourceDescription,
    required this.sourceFrequency,
    required this.sourceId,
    required this.sourceKeywords,
    required this.sourceName,
    required this.sourceSetUpOption,
    required this.sourceType,
    required this.troubleshootingText,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceDescription': sourceDescription,
      'sourceFrequency': sourceFrequency,
      'sourceId': sourceId,
      'sourceKeywords': pulumi.Input.encodeList<GetControlControlMappingSourceSourceKeyword, Map<String, dynamic>>(sourceKeywords, (value) => value.toMap()),
      'sourceName': sourceName,
      'sourceSetUpOption': sourceSetUpOption,
      'sourceType': sourceType,
      'troubleshootingText': troubleshootingText,
    };
  }

  factory GetControlControlMappingSource.fromMap(Map<String, dynamic> map) {
    return GetControlControlMappingSource(
      sourceDescription: map['sourceDescription'] as String,
      sourceFrequency: map['sourceFrequency'] as String,
      sourceId: map['sourceId'] as String,
      sourceKeywords: pulumi.Input.decodeList<GetControlControlMappingSourceSourceKeyword>(map['sourceKeywords'], (value) => GetControlControlMappingSourceSourceKeyword.fromMap((value as Map).cast<String, dynamic>())),
      sourceName: map['sourceName'] as String,
      sourceSetUpOption: map['sourceSetUpOption'] as String,
      sourceType: map['sourceType'] as String,
      troubleshootingText: map['troubleshootingText'] as String,
    );
  }
}

