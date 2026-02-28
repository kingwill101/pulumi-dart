// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_jobs_v4_get_tenant_args_doc}
/// Arguments for getTenant.
/// {@endtemplate}
/// {@macro pulumi_jobs_v4_get_tenant_args_doc}
class GetTenantArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> tenantId;

  /// Creates a new [GetTenantArgs].
  /// [project] Optional.
  /// [tenantId] Required.
  GetTenantArgs({
    String? project,
    required String tenantId,
  })  : project = pulumi.Input.asOptionalInput<String>(project),
        tenantId = pulumi.Input.asInput<String>(tenantId);

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
      project: map['project'] == null ? null : map['project'] as String,
      tenantId: map['tenantId'] as String,
    );
  }
}
