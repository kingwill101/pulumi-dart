// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getServerConfig.
class GetServerConfigContainerV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> projectId;
  final pulumi.Input<String> zone;

  GetServerConfigContainerV1beta1Args({
    required this.location,
    this.project,
    required this.projectId,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['projectId'] = projectId;
    map['zone'] = zone;
    return map;
  }

  factory GetServerConfigContainerV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetServerConfigContainerV1beta1Args(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      projectId: pulumi.Input.asInput<String>(map['projectId']),
      zone: pulumi.Input.asInput<String>(map['zone']),
    );
  }
}
