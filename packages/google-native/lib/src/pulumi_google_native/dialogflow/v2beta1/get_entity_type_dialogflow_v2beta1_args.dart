// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getEntityType.
class GetEntityTypeDialogflowV2beta1Args {
  final pulumi.Input<String> entityTypeId;
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetEntityTypeDialogflowV2beta1Args({
    required this.entityTypeId,
    this.languageCode,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entityTypeId'] = entityTypeId;
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

  factory GetEntityTypeDialogflowV2beta1Args.fromMap(Map<String, dynamic> map) {
    return GetEntityTypeDialogflowV2beta1Args(
      entityTypeId: pulumi.Input.asInput<String>(map['entityTypeId']),
      languageCode: pulumi.Input.asOptionalInput<String>(map['languageCode']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
