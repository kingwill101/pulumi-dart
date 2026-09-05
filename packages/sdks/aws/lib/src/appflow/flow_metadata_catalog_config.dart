// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_metadata_catalog_config_glue_data_catalog.dart';

class FlowMetadataCatalogConfig {
  /// Configuration that determines how Amazon AppFlow catalogs data with the AWS Glue Data Catalog. See the `metadata_catalog_config.glue_data_catalog` Block for details.
  final pulumi.Input<FlowMetadataCatalogConfigGlueDataCatalog?>? glueDataCatalog;

  /// Creates a new [FlowMetadataCatalogConfig].
  /// [glueDataCatalog] Configuration that determines how Amazon AppFlow catalogs data with the AWS Glue Data Catalog. See the `metadata_catalog_config.glue_data_catalog` Block for details.
  const FlowMetadataCatalogConfig({
    this.glueDataCatalog,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'glueDataCatalog': ?pulumi.Input.mapOptionalInputValue<FlowMetadataCatalogConfigGlueDataCatalog, Map<String, dynamic>>(glueDataCatalog, (value) => value.toMap()),
    };
  }

  factory FlowMetadataCatalogConfig.fromMap(Map<String, dynamic> map) {
    return FlowMetadataCatalogConfig(
      glueDataCatalog: (() { final guardedValue = map['glueDataCatalog']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowMetadataCatalogConfigGlueDataCatalog.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
