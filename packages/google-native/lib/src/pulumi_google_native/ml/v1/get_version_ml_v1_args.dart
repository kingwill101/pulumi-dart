// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getVersion.
class GetVersionMlV1Args {
  final pulumi.Input<String> modelId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> versionId;

  GetVersionMlV1Args({
    required this.modelId,
    this.project,
    required this.versionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['modelId'] = modelId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['versionId'] = versionId;
    return map;
  }

  factory GetVersionMlV1Args.fromMap(Map<String, dynamic> map) {
    return GetVersionMlV1Args(
      modelId: pulumi.Input.asInput<String>(map['modelId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      versionId: pulumi.Input.asInput<String>(map['versionId']),
    );
  }
}
