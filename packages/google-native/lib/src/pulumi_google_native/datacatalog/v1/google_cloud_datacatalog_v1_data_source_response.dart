// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datacatalog_v1_storage_properties_response.dart';

/// Physical location of an entry.
class GoogleCloudDatacatalogV1DataSourceResponse {
  /// Full name of a resource as defined by the service. For example: `//bigquery.googleapis.com/projects/{PROJECT_ID}/locations/{LOCATION}/datasets/{DATASET_ID}/tables/{TABLE_ID}`
  final String resource;

  /// Service that physically stores the data.
  final String service;

  /// Data Catalog entry name, if applicable.
  final String sourceEntry;

  /// Detailed properties of the underlying storage.
  final GoogleCloudDatacatalogV1StoragePropertiesResponse storageProperties;

  GoogleCloudDatacatalogV1DataSourceResponse({
    required this.resource,
    required this.service,
    required this.sourceEntry,
    required this.storageProperties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resource'] = resource;
    map['service'] = service;
    map['sourceEntry'] = sourceEntry;
    map['storageProperties'] = storageProperties.toMap();
    return map;
  }

  factory GoogleCloudDatacatalogV1DataSourceResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1DataSourceResponse(
      resource: map['resource'] as String,
      service: map['service'] as String,
      sourceEntry: map['sourceEntry'] as String,
      storageProperties:
          GoogleCloudDatacatalogV1StoragePropertiesResponse.fromMap(
              (map['storageProperties'] as Map).cast<String, dynamic>()),
    );
  }
}
