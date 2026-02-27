// ignore_for_file: unused_element, unnecessary_cast

import 'data_catalog_config_response_metastore_v1beta.dart';
import 'dataplex_config_response_metastore_v1beta.dart';

/// Specifies how metastore metadata should be integrated with external services.
class MetadataIntegrationResponseMetastoreV1beta {
  /// Optional. The integration config for the Data Catalog service.
  final DataCatalogConfigResponseMetastoreV1beta dataCatalogConfig;

  /// The integration config for the Dataplex service.
  final DataplexConfigResponseMetastoreV1beta dataplexConfig;

  MetadataIntegrationResponseMetastoreV1beta({
    required this.dataCatalogConfig,
    required this.dataplexConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataCatalogConfig'] = dataCatalogConfig.toMap();
    map['dataplexConfig'] = dataplexConfig.toMap();
    return map;
  }

  factory MetadataIntegrationResponseMetastoreV1beta.fromMap(
      Map<String, dynamic> map) {
    return MetadataIntegrationResponseMetastoreV1beta(
      dataCatalogConfig: DataCatalogConfigResponseMetastoreV1beta.fromMap(
          (map['dataCatalogConfig'] as Map).cast<String, dynamic>()),
      dataplexConfig: DataplexConfigResponseMetastoreV1beta.fromMap(
          (map['dataplexConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
