// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRegionClusterIamPolicy.
class GetRegionClusterIamPolicyDataprocV1beta2Args {
  final pulumi.Input<String> clusterId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> regionId;

  GetRegionClusterIamPolicyDataprocV1beta2Args({
    required this.clusterId,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.regionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterId'] = clusterId;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['regionId'] = regionId;
    return map;
  }

  factory GetRegionClusterIamPolicyDataprocV1beta2Args.fromMap(
      Map<String, dynamic> map) {
    return GetRegionClusterIamPolicyDataprocV1beta2Args(
      clusterId: pulumi.Input.asInput<String>(map['clusterId']),
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      regionId: pulumi.Input.asInput<String>(map['regionId']),
    );
  }
}
