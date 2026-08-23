// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_catalog_properties_data_lake_access_properties.dart';
import 'catalog_catalog_properties_iceberg_optimization_properties.dart';

class CatalogCatalogProperties {
  /// Map of custom key-value pairs for the catalog properties.
  final pulumi.Input<Map<String, String>>? customProperties;
  /// Configuration block for data lake access properties. See `dataLakeAccessProperties` below.
  final pulumi.Input<CatalogCatalogPropertiesDataLakeAccessProperties>? dataLakeAccessProperties;
  /// Configuration block for Iceberg optimization properties. See `icebergOptimizationProperties` below.
  final pulumi.Input<CatalogCatalogPropertiesIcebergOptimizationProperties>? icebergOptimizationProperties;

  /// Creates a new [CatalogCatalogProperties].
  /// [customProperties] Map of custom key-value pairs for the catalog properties.
  /// [dataLakeAccessProperties] Configuration block for data lake access properties. See `dataLakeAccessProperties` below.
  /// [icebergOptimizationProperties] Configuration block for Iceberg optimization properties. See `icebergOptimizationProperties` below.
  const CatalogCatalogProperties({
    this.customProperties,
    this.dataLakeAccessProperties,
    this.icebergOptimizationProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customProperties': ?customProperties,
      'dataLakeAccessProperties': ?pulumi.Input.mapOptionalInputValue<CatalogCatalogPropertiesDataLakeAccessProperties, Map<String, dynamic>>(dataLakeAccessProperties, (value) => value.toMap()),
      'icebergOptimizationProperties': ?pulumi.Input.mapOptionalInputValue<CatalogCatalogPropertiesIcebergOptimizationProperties, Map<String, dynamic>>(icebergOptimizationProperties, (value) => value.toMap()),
    };
  }

  factory CatalogCatalogProperties.fromMap(Map<String, dynamic> map) {
    return CatalogCatalogProperties(
      customProperties: (() { final guardedValue = map['customProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      dataLakeAccessProperties: (() { final guardedValue = map['dataLakeAccessProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CatalogCatalogPropertiesDataLakeAccessProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      icebergOptimizationProperties: (() { final guardedValue = map['icebergOptimizationProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CatalogCatalogPropertiesIcebergOptimizationProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
