// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSetColumnGroupGeoSpatialColumnGroup {
  /// Columns in this hierarchy.
  final pulumi.Input<List<String>> columns;
  /// Country code. Valid values are `US`.
  final pulumi.Input<String> countryCode;
  /// A display name for the hierarchy.
  final pulumi.Input<String> name;

  /// Creates a new [DataSetColumnGroupGeoSpatialColumnGroup].
  /// [columns] Columns in this hierarchy.
  /// [countryCode] Country code. Valid values are `US`.
  /// [name] A display name for the hierarchy.
  const DataSetColumnGroupGeoSpatialColumnGroup({
    required this.columns,
    required this.countryCode,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': columns,
      'countryCode': countryCode,
      'name': name,
    };
  }

  factory DataSetColumnGroupGeoSpatialColumnGroup.fromMap(Map<String, dynamic> map) {
    return DataSetColumnGroupGeoSpatialColumnGroup(
      columns: pulumi.Input.fromValue((map['columns'] as List).cast<String>()),
      countryCode: pulumi.Input.fromValue(map['countryCode'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

