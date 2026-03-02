// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_control_mapping_source_source_keyword.dart';

class GetControlControlMappingSource {
  final pulumi.Input<String> sourceDescription;
  final pulumi.Input<String> sourceFrequency;
  final pulumi.Input<String> sourceId;
  final pulumi.Input<List<GetControlControlMappingSourceSourceKeyword>> sourceKeywords;
  final pulumi.Input<String> sourceName;
  final pulumi.Input<String> sourceSetUpOption;
  final pulumi.Input<String> sourceType;
  final pulumi.Input<String> troubleshootingText;

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
      'sourceKeywords': pulumi.Input.mapInputValue<List<GetControlControlMappingSourceSourceKeyword>, List<Map<String, dynamic>>>(sourceKeywords, (value) => pulumi.Input.encodeList<GetControlControlMappingSourceSourceKeyword, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceName': sourceName,
      'sourceSetUpOption': sourceSetUpOption,
      'sourceType': sourceType,
      'troubleshootingText': troubleshootingText,
    };
  }

  factory GetControlControlMappingSource.fromMap(Map<String, dynamic> map) {
    return GetControlControlMappingSource(
      sourceDescription: (map['sourceDescription'] as String).input(),
      sourceFrequency: (map['sourceFrequency'] as String).input(),
      sourceId: (map['sourceId'] as String).input(),
      sourceKeywords: (pulumi.Input.decodeList<GetControlControlMappingSourceSourceKeyword>(map['sourceKeywords']!, (value) => GetControlControlMappingSourceSourceKeyword.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sourceName: (map['sourceName'] as String).input(),
      sourceSetUpOption: (map['sourceSetUpOption'] as String).input(),
      sourceType: (map['sourceType'] as String).input(),
      troubleshootingText: (map['troubleshootingText'] as String).input(),
    );
  }
}

