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
      skewedColumnNames: map['skewedColumnNames'] == null ? null : ((map['skewedColumnNames'] as List).cast<String>()).input(),
      skewedColumnValueLocationMaps: map['skewedColumnValueLocationMaps'] == null ? null : ((map['skewedColumnValueLocationMaps'] as Map).cast<String, String>()).input(),
      skewedColumnValues: map['skewedColumnValues'] == null ? null : ((map['skewedColumnValues'] as List).cast<String>()).input(),
    );
  }
}

