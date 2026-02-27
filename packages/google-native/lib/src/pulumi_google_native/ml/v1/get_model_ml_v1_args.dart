// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getModel.
class GetModelMlV1Args {
  final pulumi.Input<String> modelId;
  final pulumi.Input<String>? project;

  GetModelMlV1Args({
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

  factory GetModelMlV1Args.fromMap(Map<String, dynamic> map) {
    return GetModelMlV1Args(
      modelId: pulumi.Input.asInput<String>(map['modelId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
