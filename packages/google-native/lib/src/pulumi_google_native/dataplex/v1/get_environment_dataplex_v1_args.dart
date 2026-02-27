// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getEnvironment.
class GetEnvironmentDataplexV1Args {
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> lakeId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetEnvironmentDataplexV1Args({
    required this.environmentId,
    required this.lakeId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['environmentId'] = environmentId;
    map['lakeId'] = lakeId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetEnvironmentDataplexV1Args.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentDataplexV1Args(
      environmentId: pulumi.Input.asInput<String>(map['environmentId']),
      lakeId: pulumi.Input.asInput<String>(map['lakeId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
