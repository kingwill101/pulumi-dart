// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_metadata_catalog_config_glue_data_catalog.dart';

class FlowMetadataCatalogConfig {
  final pulumi.Input<FlowMetadataCatalogConfigGlueDataCatalog>? glueDataCatalog;

  /// Creates a new [FlowMetadataCatalogConfig].
  /// [glueDataCatalog] Optional.
  FlowMetadataCatalogConfig({
    this.glueDataCatalog,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'glueDataCatalog': ?pulumi.Input.mapOptionalInputValue<FlowMetadataCatalogConfigGlueDataCatalog, Map<String, dynamic>>(glueDataCatalog, (value) => value.toMap()),
    };
  }

  factory FlowMetadataCatalogConfig.fromMap(Map<String, dynamic> map) {
    return FlowMetadataCatalogConfig(
      glueDataCatalog: map['glueDataCatalog'] == null ? null : (FlowMetadataCatalogConfigGlueDataCatalog.fromMap((map['glueDataCatalog'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

