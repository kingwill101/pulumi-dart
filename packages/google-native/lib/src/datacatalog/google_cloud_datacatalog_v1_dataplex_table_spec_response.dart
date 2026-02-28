// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1_dataplex_external_table_response.dart';
import 'google_cloud_datacatalog_v1_dataplex_spec_response.dart';

/// Entry specification for a Dataplex table.
class GoogleCloudDatacatalogV1DataplexTableSpecResponse {
  /// Common Dataplex fields.
  final GoogleCloudDatacatalogV1DataplexSpecResponse dataplexSpec;

  /// List of external tables registered by Dataplex in other systems based on the same underlying data. External tables allow to query this data in those systems.
  final List<GoogleCloudDatacatalogV1DataplexExternalTableResponse>
      externalTables;

  /// Indicates if the table schema is managed by the user or not.
  final bool userManaged;

  /// Creates a new [GoogleCloudDatacatalogV1DataplexTableSpecResponse].
  /// [dataplexSpec] Common Dataplex fields.
  /// [externalTables] List of external tables registered by Dataplex in other systems based on the same underlying data. External tables allow to query this data in those systems.
  /// [userManaged] Indicates if the table schema is managed by the user or not.
  GoogleCloudDatacatalogV1DataplexTableSpecResponse({
    required this.dataplexSpec,
    required this.externalTables,
    required this.userManaged,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataplexSpec'] = dataplexSpec.toMap();
    map['externalTables'] = pulumi.Input.encodeList<
        GoogleCloudDatacatalogV1DataplexExternalTableResponse,
        Map<String, dynamic>>(externalTables, (value) => value.toMap());
    map['userManaged'] = userManaged;
    return map;
  }

  factory GoogleCloudDatacatalogV1DataplexTableSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1DataplexTableSpecResponse(
      dataplexSpec: GoogleCloudDatacatalogV1DataplexSpecResponse.fromMap(
          (map['dataplexSpec'] as Map).cast<String, dynamic>()),
      externalTables: pulumi.Input.decodeList<
              GoogleCloudDatacatalogV1DataplexExternalTableResponse>(
          map['externalTables'],
          (value) =>
              GoogleCloudDatacatalogV1DataplexExternalTableResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      userManaged: map['userManaged'] as bool,
    );
  }
}
