// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CatalogTableStorageDescriptorSkewedInfo {
  /// List of names of columns that contain skewed values.
  final pulumi.Input<List<String>?>? skewedColumnNames;
  /// List of values that appear so frequently as to be considered skewed.
  final pulumi.Input<Map<String, String>?>? skewedColumnValueLocationMaps;
  /// Map of skewed values to the columns that contain them.
  final pulumi.Input<List<String>?>? skewedColumnValues;

  /// Creates a new [CatalogTableStorageDescriptorSkewedInfo].
  /// [skewedColumnNames] List of names of columns that contain skewed values.
  /// [skewedColumnValueLocationMaps] List of values that appear so frequently as to be considered skewed.
  /// [skewedColumnValues] Map of skewed values to the columns that contain them.
  const CatalogTableStorageDescriptorSkewedInfo({
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
      skewedColumnNames: (() { final guardedValue = map['skewedColumnNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      skewedColumnValueLocationMaps: (() { final guardedValue = map['skewedColumnValueLocationMaps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      skewedColumnValues: (() { final guardedValue = map['skewedColumnValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
