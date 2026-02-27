// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getVersion.
class GetVersionArgs10 {
  final Input<String> modelId;
  final Input<String>? project;
  final Input<String> versionId;

  GetVersionArgs10({
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

  factory GetVersionArgs10.fromMap(Map<String, dynamic> map) {
    return GetVersionArgs10(
      modelId: Input.asInput<String>(map['modelId']),
      project: Input.asOptionalInput<String>(map['project']),
      versionId: Input.asInput<String>(map['versionId']),
    );
  }
}
