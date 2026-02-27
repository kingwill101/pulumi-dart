// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getIntent.
class GetIntentArgs {
  final pulumi.Input<String> intentId;
  final pulumi.Input<String>? intentView;
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

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
      intentId: pulumi.Input.asInput<String>(map['intentId']),
      intentView: pulumi.Input.asOptionalInput<String>(map['intentView']),
      languageCode: pulumi.Input.asOptionalInput<String>(map['languageCode']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
