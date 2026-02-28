// ignore_for_file: unused_element, unnecessary_cast

import 'data_catalog_config_response_metastore_v1alpha.dart';
import 'dataplex_config_response.dart';

/// Specifies how metastore metadata should be integrated with external services.
class MetadataIntegrationResponseMetastoreV1alpha {
  /// Optional. The integration config for the Data Catalog service.
  final DataCatalogConfigResponseMetastoreV1alpha dataCatalogConfig;

  /// The integration config for the Dataplex service.
  final DataplexConfigResponse dataplexConfig;

  /// Creates a new [MetadataIntegrationResponseMetastoreV1alpha].
  /// [dataCatalogConfig] Optional. The integration config for the Data Catalog service.
  /// [dataplexConfig] The integration config for the Dataplex service.
  MetadataIntegrationResponseMetastoreV1alpha({
    required this.dataCatalogConfig,
    required this.dataplexConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataCatalogConfig'] = dataCatalogConfig.toMap();
    map['dataplexConfig'] = dataplexConfig.toMap();
    return map;
  }

  factory MetadataIntegrationResponseMetastoreV1alpha.fromMap(
      Map<String, dynamic> map) {
    return MetadataIntegrationResponseMetastoreV1alpha(
      dataCatalogConfig: DataCatalogConfigResponseMetastoreV1alpha.fromMap(
          (map['dataCatalogConfig'] as Map).cast<String, dynamic>()),
      dataplexConfig: DataplexConfigResponse.fromMap(
          (map['dataplexConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
