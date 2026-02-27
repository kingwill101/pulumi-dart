// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getRepository.
class GetRepositoryArgs4 {
  final Input<String> connectionId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String> repositoryId;

  GetRepositoryArgs4({
    required this.connectionId,
    required this.location,
    this.project,
    required this.repositoryId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectionId'] = connectionId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['repositoryId'] = repositoryId;
    return map;
  }

  factory GetRepositoryArgs4.fromMap(Map<String, dynamic> map) {
    return GetRepositoryArgs4(
      connectionId: Input.asInput<String>(map['connectionId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      repositoryId: Input.asInput<String>(map['repositoryId']),
    );
  }
}
