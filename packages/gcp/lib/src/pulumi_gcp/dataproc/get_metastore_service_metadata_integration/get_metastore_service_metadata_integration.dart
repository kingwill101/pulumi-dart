// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_metastore_service_metadata_integration_data_catalog_config/get_metastore_service_metadata_integration_data_catalog_config.dart';

class GetMetastoreServiceMetadataIntegration {
  /// The integration config for the Data Catalog service.
  final List<GetMetastoreServiceMetadataIntegrationDataCatalogConfig>
      dataCatalogConfigs;

  GetMetastoreServiceMetadataIntegration({
    required this.dataCatalogConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataCatalogConfigs'] = pulumi.Input.encodeList<
        GetMetastoreServiceMetadataIntegrationDataCatalogConfig,
        Map<String, dynamic>>(dataCatalogConfigs, (value) => value.toMap());
    return map;
  }

  factory GetMetastoreServiceMetadataIntegration.fromMap(
      Map<String, dynamic> map) {
    return GetMetastoreServiceMetadataIntegration(
      dataCatalogConfigs: pulumi.Input.decodeList<
              GetMetastoreServiceMetadataIntegrationDataCatalogConfig>(
          map['dataCatalogConfigs'],
          (value) =>
              GetMetastoreServiceMetadataIntegrationDataCatalogConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
