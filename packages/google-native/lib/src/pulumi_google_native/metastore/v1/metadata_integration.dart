// ignore_for_file: unused_element, unnecessary_cast

import 'data_catalog_config.dart';

/// Specifies how metastore metadata should be integrated with external services.
class MetadataIntegration {
  /// Optional. The integration config for the Data Catalog service.
  final DataCatalogConfig? dataCatalogConfig;

  MetadataIntegration({
    this.dataCatalogConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataCatalogConfigValue = dataCatalogConfig;
    if (dataCatalogConfigValue != null) {
      map['dataCatalogConfig'] = dataCatalogConfigValue.toMap();
    }
    return map;
  }

  factory MetadataIntegration.fromMap(Map<String, dynamic> map) {
    return MetadataIntegration(
      dataCatalogConfig: map['dataCatalogConfig'] == null
          ? null
          : DataCatalogConfig.fromMap(
              (map['dataCatalogConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
