// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getIntent.
class GetIntentArgs3 {
  final Input<String> agentId;
  final Input<String> intentId;
  final Input<String>? languageCode;
  final Input<String> location;
  final Input<String>? project;

  GetIntentArgs3({
    required this.agentId,
    required this.intentId,
    this.languageCode,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agentId'] = agentId;
    map['intentId'] = intentId;
    final languageCodeValue = languageCode;
    if (languageCodeValue != null) {
      map['languageCode'] = languageCodeValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetIntentArgs3.fromMap(Map<String, dynamic> map) {
    return GetIntentArgs3(
      agentId: Input.asInput<String>(map['agentId']),
      intentId: Input.asInput<String>(map['intentId']),
      languageCode: Input.asOptionalInput<String>(map['languageCode']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
