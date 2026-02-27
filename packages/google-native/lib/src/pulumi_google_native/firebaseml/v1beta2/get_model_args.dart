// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getModel.
class GetModelArgs {
  final Input<String> modelId;
  final Input<String>? project;

  GetModelArgs({
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

  factory GetModelArgs.fromMap(Map<String, dynamic> map) {
    return GetModelArgs(
      modelId: Input.asInput<String>(map['modelId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
