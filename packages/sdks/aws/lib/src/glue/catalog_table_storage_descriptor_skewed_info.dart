// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CatalogTableStorageDescriptorSkewedInfo {
  /// List of names of columns that contain skewed values.
  final pulumi.Input<List<String>>? skewedColumnNames;
  /// List of values that appear so frequently as to be considered skewed.
  final pulumi.Input<Map<String, String>>? skewedColumnValueLocationMaps;
  /// Map of skewed values to the columns that contain them.
  final pulumi.Input<List<String>>? skewedColumnValues;

  /// Creates a new [CatalogTableStorageDescriptorSkewedInfo].
  /// [skewedColumnNames] List of names of columns that contain skewed values.
  /// [skewedColumnValueLocationMaps] List of values that appear so frequently as to be considered skewed.
  /// [skewedColumnValues] Map of skewed values to the columns that contain them.
  CatalogTableStorageDescriptorSkewedInfo({
    this.skewedColumnNames,
    this.skewedColumnValueLocationMaps,
    this.skewedColumnValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'skewedColumnNames': ?skewedColumnNames,
      'skewedColumnValueLocationMaps': ?skewedColumnValueLocationMaps,
      'skewedColumnValues': ?skewedColumnValues,
    };
  }

  factory CatalogTableStorageDescriptorSkewedInfo.fromMap(Map<String, dynamic> map) {
    return CatalogTableStorageDescriptorSkewedInfo(
      skewedColumnNames: map['skewedColumnNames'] == null ? null : ((map['skewedColumnNames'] as List).cast<String>()).input(),
      skewedColumnValueLocationMaps: map['skewedColumnValueLocationMaps'] == null ? null : ((map['skewedColumnValueLocationMaps'] as Map).cast<String, String>()).input(),
      skewedColumnValues: map['skewedColumnValues'] == null ? null : ((map['skewedColumnValues'] as List).cast<String>()).input(),
    );
  }
}

