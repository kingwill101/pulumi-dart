// ignore_for_file: unused_element, unnecessary_cast

import '../metastore_service_metadata_integration_data_catalog_config/metastore_service_metadata_integration_data_catalog_config.dart';

class MetastoreServiceMetadataIntegration {
  /// The integration config for the Data Catalog service.
  /// Structure is documented below.
  final MetastoreServiceMetadataIntegrationDataCatalogConfig dataCatalogConfig;

  MetastoreServiceMetadataIntegration({
    required this.dataCatalogConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataCatalogConfig'] = dataCatalogConfig.toMap();
    return map;
  }

  factory MetastoreServiceMetadataIntegration.fromMap(
      Map<String, dynamic> map) {
    return MetastoreServiceMetadataIntegration(
      dataCatalogConfig:
          MetastoreServiceMetadataIntegrationDataCatalogConfig.fromMap(
              (map['dataCatalogConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
