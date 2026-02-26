// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datacatalog_v1_physical_schema.dart';

/// Common Dataplex fields.
class GoogleCloudDatacatalogV1DataplexSpec {
  /// Fully qualified resource name of an asset in Dataplex, to which the underlying data source (Cloud Storage bucket or BigQuery dataset) of the entity is attached.
  final String? asset;

  /// Compression format of the data, e.g., zip, gzip etc.
  final String? compressionFormat;

  /// Format of the data.
  final GoogleCloudDatacatalogV1PhysicalSchema? dataFormat;

  /// Project ID of the underlying Cloud Storage or BigQuery data. Note that this may not be the same project as the correspondingly Dataplex lake / zone / asset.
  final String? project;

  GoogleCloudDatacatalogV1DataplexSpec({
    this.asset,
    this.compressionFormat,
    this.dataFormat,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final assetValue = asset;
    if (assetValue != null) {
      map['asset'] = assetValue;
    }
    final compressionFormatValue = compressionFormat;
    if (compressionFormatValue != null) {
      map['compressionFormat'] = compressionFormatValue;
    }
    final dataFormatValue = dataFormat;
    if (dataFormatValue != null) {
      map['dataFormat'] = dataFormatValue.toMap();
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GoogleCloudDatacatalogV1DataplexSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1DataplexSpec(
      asset: map['asset'] == null ? null : map['asset'] as String,
      compressionFormat: map['compressionFormat'] == null
          ? null
          : map['compressionFormat'] as String,
      dataFormat: map['dataFormat'] == null
          ? null
          : GoogleCloudDatacatalogV1PhysicalSchema.fromMap(
              (map['dataFormat'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
