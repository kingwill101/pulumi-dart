// ignore_for_file: unused_element, unnecessary_cast

import 'data_catalog_config_response3.dart';
import 'dataplex_config_response2.dart';

/// Specifies how metastore metadata should be integrated with external services.
class MetadataIntegrationResponse3 {
  /// Optional. The integration config for the Data Catalog service.
  final DataCatalogConfigResponse3 dataCatalogConfig;

  /// The integration config for the Dataplex service.
  final DataplexConfigResponse2 dataplexConfig;

  MetadataIntegrationResponse3({
    required this.dataCatalogConfig,
    required this.dataplexConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataCatalogConfig'] = dataCatalogConfig.toMap();
    map['dataplexConfig'] = dataplexConfig.toMap();
    return map;
  }

  factory MetadataIntegrationResponse3.fromMap(Map<String, dynamic> map) {
    return MetadataIntegrationResponse3(
      dataCatalogConfig: DataCatalogConfigResponse3.fromMap(
          (map['dataCatalogConfig'] as Map).cast<String, dynamic>()),
      dataplexConfig: DataplexConfigResponse2.fromMap(
          (map['dataplexConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
