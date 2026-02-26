// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getModel.
class GetModelArgs2 {
  final Input<String> modelId;
  final Input<String>? project;

  GetModelArgs2({
    required this.modelId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['modelId'] = modelId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetModelArgs2.fromMap(Map<String, dynamic> map) {
    return GetModelArgs2(
      modelId: Input.asInput<String>(map['modelId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
