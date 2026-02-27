// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getBareMetalAdminClusterIamPolicy.
class GetBareMetalAdminClusterIamPolicyArgs {
  final Input<String> bareMetalAdminClusterId;
  final Input<String> location;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;

  GetBareMetalAdminClusterIamPolicyArgs({
    required this.bareMetalAdminClusterId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bareMetalAdminClusterId'] = bareMetalAdminClusterId;
    map['location'] = location;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetBareMetalAdminClusterIamPolicyArgs.fromMap(
      Map<String, dynamic> map) {
    return GetBareMetalAdminClusterIamPolicyArgs(
      bareMetalAdminClusterId:
          Input.asInput<String>(map['bareMetalAdminClusterId']),
      location: Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
