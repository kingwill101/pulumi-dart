// ignore_for_file: unused_element, unnecessary_cast

import 'data_catalog_config_response.dart';

/// Specifies how metastore metadata should be integrated with external services.
class MetadataIntegrationResponse {
  /// Optional. The integration config for the Data Catalog service.
  final DataCatalogConfigResponse dataCatalogConfig;

  MetadataIntegrationResponse({
    required this.dataCatalogConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataCatalogConfig'] = dataCatalogConfig.toMap();
    return map;
  }

  factory MetadataIntegrationResponse.fromMap(Map<String, dynamic> map) {
    return MetadataIntegrationResponse(
      dataCatalogConfig: DataCatalogConfigResponse.fromMap(
          (map['dataCatalogConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
