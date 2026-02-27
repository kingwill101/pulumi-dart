// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getOrganizationBigQueryExport.
class GetOrganizationBigQueryExportArgs {
  final Input<String> bigQueryExportId;
  final Input<String> organizationId;

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
      bigQueryExportId: Input.asInput<String>(map['bigQueryExportId']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
