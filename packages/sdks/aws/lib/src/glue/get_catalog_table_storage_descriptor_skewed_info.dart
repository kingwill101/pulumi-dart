// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCatalogTableStorageDescriptorSkewedInfo {
  /// List of names of columns that contain skewed values.
  final pulumi.Input<List<String>> skewedColumnNames;

  /// List of values that appear so frequently as to be considered skewed.
  final pulumi.Input<Map<String, String>> skewedColumnValueLocationMaps;

  /// Map of skewed values to the columns that contain them.
  final pulumi.Input<List<String>> skewedColumnValues;

  /// Creates a new [GetCatalogTableStorageDescriptorSkewedInfo].
  /// [skewedColumnNames] List of names of columns that contain skewed values.
  /// [skewedColumnValueLocationMaps] List of values that appear so frequently as to be considered skewed.
  /// [skewedColumnValues] Map of skewed values to the columns that contain them.
  GetCatalogTableStorageDescriptorSkewedInfo({
    required this.skewedColumnNames,
    required this.skewedColumnValueLocationMaps,
    required this.skewedColumnValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'skewedColumnNames': skewedColumnNames,
      'skewedColumnValueLocationMaps': skewedColumnValueLocationMaps,
      'skewedColumnValues': skewedColumnValues,
    };
  }

  factory GetCatalogTableStorageDescriptorSkewedInfo.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetCatalogTableStorageDescriptorSkewedInfo(
      skewedColumnNames: pulumi.Input.fromValue(
        (map['skewedColumnNames'] as List).cast<String>(),
      ),
      skewedColumnValueLocationMaps: pulumi.Input.fromValue(
        (map['skewedColumnValueLocationMaps'] as Map).cast<String, String>(),
      ),
      skewedColumnValues: pulumi.Input.fromValue(
        (map['skewedColumnValues'] as List).cast<String>(),
      ),
    );
  }
}
