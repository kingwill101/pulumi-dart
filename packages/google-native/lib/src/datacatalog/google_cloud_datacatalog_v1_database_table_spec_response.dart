// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datacatalog_v1_database_table_spec_database_view_spec_response.dart';
import 'google_cloud_datacatalog_v1_dataplex_table_spec_response.dart';

/// Specification that applies to a table resource. Valid only for entries with the `TABLE` type.
class GoogleCloudDatacatalogV1DatabaseTableSpecResponse {
  /// Spec what aplies to tables that are actually views. Not set for "real" tables.
  final GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpecResponse
      databaseViewSpec;

  /// Fields specific to a Dataplex table and present only in the Dataplex table entries.
  final GoogleCloudDatacatalogV1DataplexTableSpecResponse dataplexTable;

  /// Type of this table.
  final String type;

  /// Creates a new [GoogleCloudDatacatalogV1DatabaseTableSpecResponse].
  /// [databaseViewSpec] Spec what aplies to tables that are actually views. Not set for "real" tables.
  /// [dataplexTable] Fields specific to a Dataplex table and present only in the Dataplex table entries.
  /// [type] Type of this table.
  GoogleCloudDatacatalogV1DatabaseTableSpecResponse({
    required this.databaseViewSpec,
    required this.dataplexTable,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['databaseViewSpec'] = databaseViewSpec.toMap();
    map['dataplexTable'] = dataplexTable.toMap();
    map['type'] = type;
    return map;
  }

  factory GoogleCloudDatacatalogV1DatabaseTableSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1DatabaseTableSpecResponse(
      databaseViewSpec:
          GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpecResponse
              .fromMap(
                  (map['databaseViewSpec'] as Map).cast<String, dynamic>()),
      dataplexTable: GoogleCloudDatacatalogV1DataplexTableSpecResponse.fromMap(
          (map['dataplexTable'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
