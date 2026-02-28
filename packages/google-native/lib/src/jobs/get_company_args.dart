// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_jobs_v3_get_company_args_doc}
/// Arguments for getCompany.
/// {@endtemplate}
/// {@macro pulumi_jobs_v3_get_company_args_doc}
class GetCompanyArgs {
  final pulumi.Input<String> companyId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCompanyArgs].
  /// [companyId] Required.
  /// [project] Optional.
  GetCompanyArgs({
    required String companyId,
    String? project,
  }) :
      companyId = pulumi.Input.asInput<String>(companyId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'companyId': companyId,
      'project': ?project,
    };
  }

  factory GetCompanyArgs.fromMap(Map<String, dynamic> map) {
    return GetCompanyArgs(
      companyId: map['companyId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

