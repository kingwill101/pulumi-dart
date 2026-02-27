// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSpec.
class GetSpecArgs {
  final pulumi.Input<String> apiId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> specId;
  final pulumi.Input<String> versionId;

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
      apiId: pulumi.Input.asInput<String>(map['apiId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      specId: pulumi.Input.asInput<String>(map['specId']),
      versionId: pulumi.Input.asInput<String>(map['versionId']),
    );
  }
}
