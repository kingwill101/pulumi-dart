// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataSetColumnGroupGeoSpatialColumnGroup {
  final pulumi.Input<List<String>> columns;
  final pulumi.Input<String> countryCode;
  final pulumi.Input<String> name;

  /// Creates a new [GetDataSetColumnGroupGeoSpatialColumnGroup].
  /// [columns] Required.
  /// [countryCode] Required.
  /// [name] Required.
  GetDataSetColumnGroupGeoSpatialColumnGroup({
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

  factory GetDataSetColumnGroupGeoSpatialColumnGroup.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDataSetColumnGroupGeoSpatialColumnGroup(
      columns: pulumi.Input.fromValue((map['columns'] as List).cast<String>()),
      countryCode: pulumi.Input.fromValue(map['countryCode'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
