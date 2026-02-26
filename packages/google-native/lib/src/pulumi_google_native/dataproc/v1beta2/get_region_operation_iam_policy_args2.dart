// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRegionOperationIamPolicy.
class GetRegionOperationIamPolicyArgs2 {
  final Input<String> operationId;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;
  final Input<String> regionId;

  GetRegionOperationIamPolicyArgs2({
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

  factory GetRegionOperationIamPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return GetRegionOperationIamPolicyArgs2(
      operationId: Input.asInput<String>(map['operationId']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
      regionId: Input.asInput<String>(map['regionId']),
    );
  }
}
