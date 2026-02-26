// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getModel.
class GetModelArgs5 {
  final Input<String> catalogId;
  final Input<String> location;
  final Input<String> modelId;
  final Input<String>? project;

  GetModelArgs5({
    required this.catalogId,
    required this.location,
    required this.modelId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['catalogId'] = catalogId;
    map['location'] = location;
    map['modelId'] = modelId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetModelArgs5.fromMap(Map<String, dynamic> map) {
    return GetModelArgs5(
      catalogId: Input.asInput<String>(map['catalogId']),
      location: Input.asInput<String>(map['location']),
      modelId: Input.asInput<String>(map['modelId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
