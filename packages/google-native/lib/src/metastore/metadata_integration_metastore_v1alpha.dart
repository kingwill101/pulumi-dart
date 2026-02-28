// ignore_for_file: unused_element, unnecessary_cast

import 'data_catalog_config_metastore_v1alpha.dart';
import 'dataplex_config.dart';

/// Specifies how metastore metadata should be integrated with external services.
class MetadataIntegrationMetastoreV1alpha {
  /// Optional. The integration config for the Data Catalog service.
  final DataCatalogConfigMetastoreV1alpha? dataCatalogConfig;

  /// The integration config for the Dataplex service.
  final DataplexConfig? dataplexConfig;

  /// Creates a new [MetadataIntegrationMetastoreV1alpha].
  /// [dataCatalogConfig] Optional. The integration config for the Data Catalog service.
  /// [dataplexConfig] The integration config for the Dataplex service.
  MetadataIntegrationMetastoreV1alpha({
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

  factory MetadataIntegrationMetastoreV1alpha.fromMap(
      Map<String, dynamic> map) {
    return MetadataIntegrationMetastoreV1alpha(
      dataCatalogConfig: map['dataCatalogConfig'] == null
          ? null
          : DataCatalogConfigMetastoreV1alpha.fromMap(
              (map['dataCatalogConfig'] as Map).cast<String, dynamic>()),
      dataplexConfig: map['dataplexConfig'] == null
          ? null
          : DataplexConfig.fromMap(
              (map['dataplexConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
