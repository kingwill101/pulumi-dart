// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getRegistryGroupIamPolicy.
class GetRegistryGroupIamPolicyArgs {
  final Input<String> groupId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String> registryId;

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
      groupId: Input.asInput<String>(map['groupId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      registryId: Input.asInput<String>(map['registryId']),
    );
  }
}
