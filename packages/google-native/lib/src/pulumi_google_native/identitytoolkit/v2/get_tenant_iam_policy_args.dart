// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getTenantIamPolicy.
class GetTenantIamPolicyArgs {
  final Input<String>? project;
  final Input<String> tenantId;

  GetTenantIamPolicyArgs({
    this.project,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['tenantId'] = tenantId;
    return map;
  }

  factory GetTenantIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetTenantIamPolicyArgs(
      project: Input.asOptionalInput<String>(map['project']),
      tenantId: Input.asInput<String>(map['tenantId']),
    );
  }
}
