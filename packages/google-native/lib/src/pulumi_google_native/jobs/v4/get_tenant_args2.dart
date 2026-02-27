// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getTenant.
class GetTenantArgs2 {
  final Input<String>? project;
  final Input<String> tenantId;

  GetTenantArgs2({
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

  factory GetTenantArgs2.fromMap(Map<String, dynamic> map) {
    return GetTenantArgs2(
      project: Input.asOptionalInput<String>(map['project']),
      tenantId: Input.asInput<String>(map['tenantId']),
    );
  }
}
