// ignore_for_file: unused_element, unnecessary_cast

import 'data_catalog_config_metastore_v1beta.dart';
import 'dataplex_config_metastore_v1beta.dart';

/// Specifies how metastore metadata should be integrated with external services.
class MetadataIntegrationMetastoreV1beta {
  /// Optional. The integration config for the Data Catalog service.
  final DataCatalogConfigMetastoreV1beta? dataCatalogConfig;

  /// The integration config for the Dataplex service.
  final DataplexConfigMetastoreV1beta? dataplexConfig;

  /// Creates a new [MetadataIntegrationMetastoreV1beta].
  /// [dataCatalogConfig] Optional. The integration config for the Data Catalog service.
  /// [dataplexConfig] The integration config for the Dataplex service.
  MetadataIntegrationMetastoreV1beta({
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

  factory MetadataIntegrationMetastoreV1beta.fromMap(Map<String, dynamic> map) {
    return MetadataIntegrationMetastoreV1beta(
      dataCatalogConfig: map['dataCatalogConfig'] == null
          ? null
          : DataCatalogConfigMetastoreV1beta.fromMap(
              (map['dataCatalogConfig'] as Map).cast<String, dynamic>()),
      dataplexConfig: map['dataplexConfig'] == null
          ? null
          : DataplexConfigMetastoreV1beta.fromMap(
              (map['dataplexConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
