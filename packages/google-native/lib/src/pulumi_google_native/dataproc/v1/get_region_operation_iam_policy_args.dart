// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRegionOperationIamPolicy.
class GetRegionOperationIamPolicyArgs {
  final pulumi.Input<String> operationId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> regionId;

  GetRegionOperationIamPolicyArgs({
    required this.operationId,
    this.project,
    required this.regionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['operationId'] = operationId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['regionId'] = regionId;
    return map;
  }

  factory GetRegionOperationIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionOperationIamPolicyArgs(
      operationId: pulumi.Input.asInput<String>(map['operationId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      regionId: pulumi.Input.asInput<String>(map['regionId']),
    );
  }
}
