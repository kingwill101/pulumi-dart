// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getIntent.
class GetIntentDialogflowV3Args {
  final pulumi.Input<String> agentId;
  final pulumi.Input<String> intentId;
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetIntentDialogflowV3Args({
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

  factory GetIntentDialogflowV3Args.fromMap(Map<String, dynamic> map) {
    return GetIntentDialogflowV3Args(
      agentId: pulumi.Input.asInput<String>(map['agentId']),
      intentId: pulumi.Input.asInput<String>(map['intentId']),
      languageCode: pulumi.Input.asOptionalInput<String>(map['languageCode']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
