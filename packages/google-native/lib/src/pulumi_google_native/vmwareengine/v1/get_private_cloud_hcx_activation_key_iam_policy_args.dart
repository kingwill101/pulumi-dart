// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getPrivateCloudHcxActivationKeyIamPolicy.
class GetPrivateCloudHcxActivationKeyIamPolicyArgs {
  final Input<String> hcxActivationKeyId;
  final Input<String> location;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String> privateCloudId;
  final Input<String>? project;

  GetPrivateCloudHcxActivationKeyIamPolicyArgs({
    required this.hcxActivationKeyId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    required this.privateCloudId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hcxActivationKeyId'] = hcxActivationKeyId;
    map['location'] = location;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    map['privateCloudId'] = privateCloudId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetPrivateCloudHcxActivationKeyIamPolicyArgs.fromMap(
      Map<String, dynamic> map) {
    return GetPrivateCloudHcxActivationKeyIamPolicyArgs(
      hcxActivationKeyId: Input.asInput<String>(map['hcxActivationKeyId']),
      location: Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      privateCloudId: Input.asInput<String>(map['privateCloudId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
