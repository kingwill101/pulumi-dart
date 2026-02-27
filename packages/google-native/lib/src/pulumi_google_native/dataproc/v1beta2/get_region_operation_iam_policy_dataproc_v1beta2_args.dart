// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRegionOperationIamPolicy.
class GetRegionOperationIamPolicyDataprocV1beta2Args {
  final pulumi.Input<String> operationId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> regionId;

  GetRegionOperationIamPolicyDataprocV1beta2Args({
    required this.operationId,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.regionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['operationId'] = operationId;
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

  factory GetRegionOperationIamPolicyDataprocV1beta2Args.fromMap(
      Map<String, dynamic> map) {
    return GetRegionOperationIamPolicyDataprocV1beta2Args(
      operationId: pulumi.Input.asInput<String>(map['operationId']),
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      regionId: pulumi.Input.asInput<String>(map['regionId']),
    );
  }
}
