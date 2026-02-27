// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getServiceAttachmentIamPolicy.
class GetServiceAttachmentIamPolicyComputeBetaArgs {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> resource;

  GetServiceAttachmentIamPolicyComputeBetaArgs({
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.region,
    required this.resource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    map['resource'] = resource;
    return map;
  }

  factory GetServiceAttachmentIamPolicyComputeBetaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetServiceAttachmentIamPolicyComputeBetaArgs(
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
      resource: pulumi.Input.asInput<String>(map['resource']),
    );
  }
}
