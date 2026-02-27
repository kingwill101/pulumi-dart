// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRegistryGroupIamPolicy.
class GetRegistryGroupIamPolicyArgs {
  final pulumi.Input<String> groupId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> registryId;

  GetRegistryGroupIamPolicyArgs({
    required this.groupId,
    required this.location,
    this.project,
    required this.registryId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupId'] = groupId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['registryId'] = registryId;
    return map;
  }

  factory GetRegistryGroupIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRegistryGroupIamPolicyArgs(
      groupId: pulumi.Input.asInput<String>(map['groupId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      registryId: pulumi.Input.asInput<String>(map['registryId']),
    );
  }
}
