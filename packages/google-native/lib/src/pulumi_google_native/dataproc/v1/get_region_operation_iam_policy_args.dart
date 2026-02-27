// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getRegionOperationIamPolicy.
class GetRegionOperationIamPolicyArgs {
  final Input<String> operationId;
  final Input<String>? project;
  final Input<String> regionId;

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
      operationId: Input.asInput<String>(map['operationId']),
      project: Input.asOptionalInput<String>(map['project']),
      regionId: Input.asInput<String>(map['regionId']),
    );
  }
}
