// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTag.
class GetTagArtifactregistryV1beta2Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> packageId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> repositoryId;
  final pulumi.Input<String> tagId;

  GetTagArtifactregistryV1beta2Args({
    required this.location,
    required this.packageId,
    this.project,
    required this.repositoryId,
    required this.tagId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['packageId'] = packageId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['repositoryId'] = repositoryId;
    map['tagId'] = tagId;
    return map;
  }

  factory GetTagArtifactregistryV1beta2Args.fromMap(Map<String, dynamic> map) {
    return GetTagArtifactregistryV1beta2Args(
      location: pulumi.Input.asInput<String>(map['location']),
      packageId: pulumi.Input.asInput<String>(map['packageId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      repositoryId: pulumi.Input.asInput<String>(map['repositoryId']),
      tagId: pulumi.Input.asInput<String>(map['tagId']),
    );
  }
}
