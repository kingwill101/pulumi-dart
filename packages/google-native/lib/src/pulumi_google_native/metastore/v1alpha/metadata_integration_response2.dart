// ignore_for_file: unused_element, unnecessary_cast

import 'data_catalog_config_response2.dart';
import 'dataplex_config_response.dart';

/// Specifies how metastore metadata should be integrated with external services.
class MetadataIntegrationResponse2 {
  /// Optional. The integration config for the Data Catalog service.
  final DataCatalogConfigResponse2 dataCatalogConfig;

  /// The integration config for the Dataplex service.
  final DataplexConfigResponse dataplexConfig;

  MetadataIntegrationResponse2({
    required this.dataCatalogConfig,
    required this.dataplexConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataCatalogConfig'] = dataCatalogConfig.toMap();
    map['dataplexConfig'] = dataplexConfig.toMap();
    return map;
  }

  factory MetadataIntegrationResponse2.fromMap(Map<String, dynamic> map) {
    return MetadataIntegrationResponse2(
      dataCatalogConfig: DataCatalogConfigResponse2.fromMap(
          (map['dataCatalogConfig'] as Map).cast<String, dynamic>()),
      dataplexConfig: DataplexConfigResponse.fromMap(
          (map['dataplexConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
