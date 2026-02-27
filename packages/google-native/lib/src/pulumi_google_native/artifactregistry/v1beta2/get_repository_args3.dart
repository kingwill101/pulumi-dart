// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getRepository.
class GetRepositoryArgs3 {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> repositoryId;

  GetRepositoryArgs3({
    required this.location,
    this.project,
    required this.repositoryId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['repositoryId'] = repositoryId;
    return map;
  }

  factory GetRepositoryArgs3.fromMap(Map<String, dynamic> map) {
    return GetRepositoryArgs3(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      repositoryId: Input.asInput<String>(map['repositoryId']),
    );
  }
}
