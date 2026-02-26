// ignore_for_file: unused_element, unnecessary_cast

import 'data_catalog_config3.dart';
import 'dataplex_config2.dart';

/// Specifies how metastore metadata should be integrated with external services.
class MetadataIntegration3 {
  /// Optional. The integration config for the Data Catalog service.
  final DataCatalogConfig3? dataCatalogConfig;

  /// The integration config for the Dataplex service.
  final DataplexConfig2? dataplexConfig;

  MetadataIntegration3({
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

  factory MetadataIntegration3.fromMap(Map<String, dynamic> map) {
    return MetadataIntegration3(
      dataCatalogConfig: map['dataCatalogConfig'] == null
          ? null
          : DataCatalogConfig3.fromMap(
              (map['dataCatalogConfig'] as Map).cast<String, dynamic>()),
      dataplexConfig: map['dataplexConfig'] == null
          ? null
          : DataplexConfig2.fromMap(
              (map['dataplexConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
