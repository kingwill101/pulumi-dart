// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getTag.
class GetTagArgs3 {
  final Input<String> location;
  final Input<String> packageId;
  final Input<String>? project;
  final Input<String> repositoryId;
  final Input<String> tagId;

  GetTagArgs3({
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

  factory GetTagArgs3.fromMap(Map<String, dynamic> map) {
    return GetTagArgs3(
      location: Input.asInput<String>(map['location']),
      packageId: Input.asInput<String>(map['packageId']),
      project: Input.asOptionalInput<String>(map['project']),
      repositoryId: Input.asInput<String>(map['repositoryId']),
      tagId: Input.asInput<String>(map['tagId']),
    );
  }
}
