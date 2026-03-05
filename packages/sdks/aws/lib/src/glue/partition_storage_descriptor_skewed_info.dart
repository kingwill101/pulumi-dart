// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PartitionStorageDescriptorSkewedInfo {
  /// A list of names of columns that contain skewed values.
  final pulumi.Input<List<String>>? skewedColumnNames;
  /// A list of values that appear so frequently as to be considered skewed.
  final pulumi.Input<Map<String, String>>? skewedColumnValueLocationMaps;
  /// A map of skewed values to the columns that contain them.
  final pulumi.Input<List<String>>? skewedColumnValues;

  /// Creates a new [PartitionStorageDescriptorSkewedInfo].
  /// [skewedColumnNames] A list of names of columns that contain skewed values.
  /// [skewedColumnValueLocationMaps] A list of values that appear so frequently as to be considered skewed.
  /// [skewedColumnValues] A map of skewed values to the columns that contain them.
  PartitionStorageDescriptorSkewedInfo({
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

  factory PartitionStorageDescriptorSkewedInfo.fromMap(Map<String, dynamic> map) {
    return PartitionStorageDescriptorSkewedInfo(
      skewedColumnNames: (() { final guardedValue = map['skewedColumnNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      skewedColumnValueLocationMaps: (() { final guardedValue = map['skewedColumnValueLocationMaps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      skewedColumnValues: (() { final guardedValue = map['skewedColumnValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

