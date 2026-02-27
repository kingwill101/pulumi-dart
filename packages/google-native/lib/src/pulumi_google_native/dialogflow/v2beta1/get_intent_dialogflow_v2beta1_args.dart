// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getIntent.
class GetIntentDialogflowV2beta1Args {
  final pulumi.Input<String> intentId;
  final pulumi.Input<String>? intentView;
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetIntentDialogflowV2beta1Args({
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

  factory GetIntentDialogflowV2beta1Args.fromMap(Map<String, dynamic> map) {
    return GetIntentDialogflowV2beta1Args(
      intentId: pulumi.Input.asInput<String>(map['intentId']),
      intentView: pulumi.Input.asOptionalInput<String>(map['intentView']),
      languageCode: pulumi.Input.asOptionalInput<String>(map['languageCode']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
