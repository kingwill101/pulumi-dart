// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_v1_get_organization_big_query_export_args_doc}
/// Arguments for getOrganizationBigQueryExport.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_v1_get_organization_big_query_export_args_doc}
class GetOrganizationBigQueryExportArgs {
  final pulumi.Input<String> bigQueryExportId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetOrganizationBigQueryExportArgs].
  /// [bigQueryExportId] Required.
  /// [organizationId] Required.
  GetOrganizationBigQueryExportArgs({
    required String bigQueryExportId,
    required String organizationId,
  })  : bigQueryExportId = pulumi.Input.asInput<String>(bigQueryExportId),
        organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bigQueryExportId'] = bigQueryExportId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetOrganizationBigQueryExportArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationBigQueryExportArgs(
      bigQueryExportId: map['bigQueryExportId'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}
