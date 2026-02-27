// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getIndex.
class GetIndexAiplatformV1beta1Args {
  final pulumi.Input<String> indexId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetIndexAiplatformV1beta1Args({
    required this.indexId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['indexId'] = indexId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetIndexAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetIndexAiplatformV1beta1Args(
      indexId: pulumi.Input.asInput<String>(map['indexId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
