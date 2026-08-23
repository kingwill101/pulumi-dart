// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_catalog_catalog_property_data_lake_access_property.dart';
import 'get_catalog_catalog_property_iceberg_optimization_property.dart';

class GetCatalogCatalogProperty {
  /// Map of custom key-value pairs for the catalog properties.
  final pulumi.Input<Map<String, String>> customProperties;
  /// Data lake access properties. See `dataLakeAccessProperties` below.
  final pulumi.Input<List<GetCatalogCatalogPropertyDataLakeAccessProperty>> dataLakeAccessProperties;
  /// Iceberg optimization properties. See `icebergOptimizationProperties` below.
  final pulumi.Input<List<GetCatalogCatalogPropertyIcebergOptimizationProperty>> icebergOptimizationProperties;

  /// Creates a new [GetCatalogCatalogProperty].
  /// [customProperties] Map of custom key-value pairs for the catalog properties.
  /// [dataLakeAccessProperties] Data lake access properties. See `dataLakeAccessProperties` below.
  /// [icebergOptimizationProperties] Iceberg optimization properties. See `icebergOptimizationProperties` below.
  const GetCatalogCatalogProperty({
    required this.customProperties,
    required this.dataLakeAccessProperties,
    required this.icebergOptimizationProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customProperties': customProperties,
      'dataLakeAccessProperties': pulumi.Input.mapInputValue<List<GetCatalogCatalogPropertyDataLakeAccessProperty>, List<Map<String, dynamic>>>(dataLakeAccessProperties, (value) => pulumi.Input.encodeList<GetCatalogCatalogPropertyDataLakeAccessProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'icebergOptimizationProperties': pulumi.Input.mapInputValue<List<GetCatalogCatalogPropertyIcebergOptimizationProperty>, List<Map<String, dynamic>>>(icebergOptimizationProperties, (value) => pulumi.Input.encodeList<GetCatalogCatalogPropertyIcebergOptimizationProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetCatalogCatalogProperty.fromMap(Map<String, dynamic> map) {
    return GetCatalogCatalogProperty(
      customProperties: pulumi.Input.fromValue((map['customProperties'] as Map).cast<String, String>()),
      dataLakeAccessProperties: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCatalogCatalogPropertyDataLakeAccessProperty>(map['dataLakeAccessProperties']!, (value) => GetCatalogCatalogPropertyDataLakeAccessProperty.fromMap((value as Map).cast<String, dynamic>()))),
      icebergOptimizationProperties: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCatalogCatalogPropertyIcebergOptimizationProperty>(map['icebergOptimizationProperties']!, (value) => GetCatalogCatalogPropertyIcebergOptimizationProperty.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
