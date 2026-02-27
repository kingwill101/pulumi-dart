// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getOrganizationBigQueryExport.
class GetOrganizationBigQueryExportArgs {
  final pulumi.Input<String> bigQueryExportId;
  final pulumi.Input<String> organizationId;

  GetOrganizationBigQueryExportArgs({
    required this.bigQueryExportId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bigQueryExportId'] = bigQueryExportId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetOrganizationBigQueryExportArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationBigQueryExportArgs(
      bigQueryExportId: pulumi.Input.asInput<String>(map['bigQueryExportId']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
