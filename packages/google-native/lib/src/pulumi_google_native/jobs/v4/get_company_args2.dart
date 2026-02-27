// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getCompany.
class GetCompanyArgs2 {
  final Input<String> companyId;
  final Input<String>? project;
  final Input<String> tenantId;

  GetCompanyArgs2({
    required this.companyId,
    this.project,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['companyId'] = companyId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['tenantId'] = tenantId;
    return map;
  }

  factory GetCompanyArgs2.fromMap(Map<String, dynamic> map) {
    return GetCompanyArgs2(
      companyId: Input.asInput<String>(map['companyId']),
      project: Input.asOptionalInput<String>(map['project']),
      tenantId: Input.asInput<String>(map['tenantId']),
    );
  }
}
