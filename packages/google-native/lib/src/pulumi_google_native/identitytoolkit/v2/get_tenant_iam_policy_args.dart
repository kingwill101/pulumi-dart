// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTenantIamPolicy.
class GetTenantIamPolicyArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> tenantId;

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
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      tenantId: pulumi.Input.asInput<String>(map['tenantId']),
    );
  }
}
