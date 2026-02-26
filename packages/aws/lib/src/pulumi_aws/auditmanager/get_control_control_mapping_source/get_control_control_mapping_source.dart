// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_control_control_mapping_source_source_keyword/get_control_control_mapping_source_source_keyword.dart';

class GetControlControlMappingSource {
  final String sourceDescription;
  final String sourceFrequency;
  final String sourceId;
  final List<GetControlControlMappingSourceSourceKeyword> sourceKeywords;
  final String sourceName;
  final String sourceSetUpOption;
  final String sourceType;
  final String troubleshootingText;

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
    final map = <String, dynamic>{};
    map['sourceDescription'] = sourceDescription;
    map['sourceFrequency'] = sourceFrequency;
    map['sourceId'] = sourceId;
    map['sourceKeywords'] = Input.encodeList<
        GetControlControlMappingSourceSourceKeyword,
        Map<String, dynamic>>(sourceKeywords, (value) => value.toMap());
    map['sourceName'] = sourceName;
    map['sourceSetUpOption'] = sourceSetUpOption;
    map['sourceType'] = sourceType;
    map['troubleshootingText'] = troubleshootingText;
    return map;
  }

  factory GetControlControlMappingSource.fromMap(Map<String, dynamic> map) {
    return GetControlControlMappingSource(
      sourceDescription: map['sourceDescription'] as String,
      sourceFrequency: map['sourceFrequency'] as String,
      sourceId: map['sourceId'] as String,
      sourceKeywords:
          Input.decodeList<GetControlControlMappingSourceSourceKeyword>(
              map['sourceKeywords'],
              (value) => GetControlControlMappingSourceSourceKeyword.fromMap(
                  (value as Map).cast<String, dynamic>())),
      sourceName: map['sourceName'] as String,
      sourceSetUpOption: map['sourceSetUpOption'] as String,
      sourceType: map['sourceType'] as String,
      troubleshootingText: map['troubleshootingText'] as String,
    );
  }
}
