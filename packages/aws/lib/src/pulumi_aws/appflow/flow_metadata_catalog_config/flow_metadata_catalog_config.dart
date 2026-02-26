// ignore_for_file: unused_element, unnecessary_cast

import '../flow_metadata_catalog_config_glue_data_catalog/flow_metadata_catalog_config_glue_data_catalog.dart';

class FlowMetadataCatalogConfig {
  final FlowMetadataCatalogConfigGlueDataCatalog? glueDataCatalog;

  FlowMetadataCatalogConfig({
    this.glueDataCatalog,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final glueDataCatalogValue = glueDataCatalog;
    if (glueDataCatalogValue != null) {
      map['glueDataCatalog'] = glueDataCatalogValue.toMap();
    }
    return map;
  }

  factory FlowMetadataCatalogConfig.fromMap(Map<String, dynamic> map) {
    return FlowMetadataCatalogConfig(
      glueDataCatalog: map['glueDataCatalog'] == null
          ? null
          : FlowMetadataCatalogConfigGlueDataCatalog.fromMap(
              (map['glueDataCatalog'] as Map).cast<String, dynamic>()),
    );
  }
}
