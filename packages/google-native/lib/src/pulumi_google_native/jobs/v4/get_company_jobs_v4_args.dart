// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCompany.
class GetCompanyJobsV4Args {
  final pulumi.Input<String> companyId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> tenantId;

  GetCompanyJobsV4Args({
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

  factory GetCompanyJobsV4Args.fromMap(Map<String, dynamic> map) {
    return GetCompanyJobsV4Args(
      companyId: pulumi.Input.asInput<String>(map['companyId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      tenantId: pulumi.Input.asInput<String>(map['tenantId']),
    );
  }
}
