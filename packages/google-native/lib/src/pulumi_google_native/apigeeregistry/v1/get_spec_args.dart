// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getSpec.
class GetSpecArgs {
  final Input<String> apiId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String> specId;
  final Input<String> versionId;

  GetSpecArgs({
    required this.apiId,
    required this.location,
    this.project,
    required this.specId,
    required this.versionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiId'] = apiId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['specId'] = specId;
    map['versionId'] = versionId;
    return map;
  }

  factory GetSpecArgs.fromMap(Map<String, dynamic> map) {
    return GetSpecArgs(
      apiId: Input.asInput<String>(map['apiId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      specId: Input.asInput<String>(map['specId']),
      versionId: Input.asInput<String>(map['versionId']),
    );
  }
}
