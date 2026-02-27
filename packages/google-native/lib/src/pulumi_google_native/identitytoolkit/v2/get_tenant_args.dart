// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getTenant.
class GetTenantArgs {
  final Input<String>? project;
  final Input<String> tenantId;

  GetTenantArgs({
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

  factory GetTenantArgs.fromMap(Map<String, dynamic> map) {
    return GetTenantArgs(
      project: Input.asOptionalInput<String>(map['project']),
      tenantId: Input.asInput<String>(map['tenantId']),
    );
  }
}
