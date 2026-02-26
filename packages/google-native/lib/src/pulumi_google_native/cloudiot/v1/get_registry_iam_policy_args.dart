// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRegistryIamPolicy.
class GetRegistryIamPolicyArgs {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> registryId;

  GetRegistryIamPolicyArgs({
    required this.location,
    this.project,
    required this.registryId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['registryId'] = registryId;
    return map;
  }

  factory GetRegistryIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRegistryIamPolicyArgs(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      registryId: Input.asInput<String>(map['registryId']),
    );
  }
}
