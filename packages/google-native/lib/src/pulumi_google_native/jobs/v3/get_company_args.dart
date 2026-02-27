// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCompany.
class GetCompanyArgs {
  final pulumi.Input<String> companyId;
  final pulumi.Input<String>? project;

  GetCompanyArgs({
    required this.companyId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['companyId'] = companyId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetCompanyArgs.fromMap(Map<String, dynamic> map) {
    return GetCompanyArgs(
      companyId: pulumi.Input.asInput<String>(map['companyId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
