// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRepository.
class GetRepositoryCloudbuildV2Args {
  final pulumi.Input<String> connectionId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> repositoryId;

  GetRepositoryCloudbuildV2Args({
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

  factory GetRepositoryCloudbuildV2Args.fromMap(Map<String, dynamic> map) {
    return GetRepositoryCloudbuildV2Args(
      connectionId: pulumi.Input.asInput<String>(map['connectionId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      repositoryId: pulumi.Input.asInput<String>(map['repositoryId']),
    );
  }
}
