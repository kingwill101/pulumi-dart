// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getModel.
class GetModelArgs6 {
  final Input<String> location;
  final Input<String> modelId;
  final Input<String>? project;

  GetModelArgs6({
    required this.location,
    required this.modelId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['modelId'] = modelId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetModelArgs6.fromMap(Map<String, dynamic> map) {
    return GetModelArgs6(
      location: Input.asInput<String>(map['location']),
      modelId: Input.asInput<String>(map['modelId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
