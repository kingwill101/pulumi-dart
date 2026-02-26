// ignore_for_file: unused_element, unnecessary_cast

import 'data_catalog_config2.dart';
import 'dataplex_config.dart';

/// Specifies how metastore metadata should be integrated with external services.
class MetadataIntegration2 {
  /// Optional. The integration config for the Data Catalog service.
  final DataCatalogConfig2? dataCatalogConfig;

  /// The integration config for the Dataplex service.
  final DataplexConfig? dataplexConfig;

  MetadataIntegration2({
    this.dataCatalogConfig,
    this.dataplexConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataCatalogConfigValue = dataCatalogConfig;
    if (dataCatalogConfigValue != null) {
      map['dataCatalogConfig'] = dataCatalogConfigValue.toMap();
    }
    final dataplexConfigValue = dataplexConfig;
    if (dataplexConfigValue != null) {
      map['dataplexConfig'] = dataplexConfigValue.toMap();
    }
    return map;
  }

  factory MetadataIntegration2.fromMap(Map<String, dynamic> map) {
    return MetadataIntegration2(
      dataCatalogConfig: map['dataCatalogConfig'] == null
          ? null
          : DataCatalogConfig2.fromMap(
              (map['dataCatalogConfig'] as Map).cast<String, dynamic>()),
      dataplexConfig: map['dataplexConfig'] == null
          ? null
          : DataplexConfig.fromMap(
              (map['dataplexConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
