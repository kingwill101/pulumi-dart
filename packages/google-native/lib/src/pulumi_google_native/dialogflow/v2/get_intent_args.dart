// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getIntent.
class GetIntentArgs {
  final Input<String> intentId;
  final Input<String>? intentView;
  final Input<String>? languageCode;
  final Input<String> location;
  final Input<String>? project;

  GetIntentArgs({
    required this.intentId,
    this.intentView,
    this.languageCode,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['intentId'] = intentId;
    final intentViewValue = intentView;
    if (intentViewValue != null) {
      map['intentView'] = intentViewValue;
    }
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

  factory GetIntentArgs.fromMap(Map<String, dynamic> map) {
    return GetIntentArgs(
      intentId: Input.asInput<String>(map['intentId']),
      intentView: Input.asOptionalInput<String>(map['intentView']),
      languageCode: Input.asOptionalInput<String>(map['languageCode']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
