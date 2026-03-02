// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_set_logical_table_map_data_transform_tag_column_operation_tag_column_description.dart';

class DataSetLogicalTableMapDataTransformTagColumnOperationTag {
  /// A description for a column. See column_description.
  final pulumi.Input<DataSetLogicalTableMapDataTransformTagColumnOperationTagColumnDescription>? columnDescription;
  /// A geospatial role for a column. Valid values are `COUNTRY`, `STATE`, `COUNTY`, `CITY`, `POSTCODE`, `LONGITUDE`, and `LATITUDE`.
  final pulumi.Input<String>? columnGeographicRole;

  /// Creates a new [DataSetLogicalTableMapDataTransformTagColumnOperationTag].
  /// [columnDescription] A description for a column. See column_description.
  /// [columnGeographicRole] A geospatial role for a column. Valid values are `COUNTRY`, `STATE`, `COUNTY`, `CITY`, `POSTCODE`, `LONGITUDE`, and `LATITUDE`.
  DataSetLogicalTableMapDataTransformTagColumnOperationTag({
    this.columnDescription,
    this.columnGeographicRole,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnDescription': ?pulumi.Input.mapOptionalInputValue<DataSetLogicalTableMapDataTransformTagColumnOperationTagColumnDescription, Map<String, dynamic>>(columnDescription, (value) => value.toMap()),
      'columnGeographicRole': ?columnGeographicRole,
    };
  }

  factory DataSetLogicalTableMapDataTransformTagColumnOperationTag.fromMap(Map<String, dynamic> map) {
    return DataSetLogicalTableMapDataTransformTagColumnOperationTag(
      columnDescription: map['columnDescription'] == null ? null : ((DataSetLogicalTableMapDataTransformTagColumnOperationTagColumnDescription.fromMap((map['columnDescription']! as Map).cast<String, dynamic>())).input()).input(),
      columnGeographicRole: map['columnGeographicRole'] == null ? null : ((map['columnGeographicRole'] as String).input()).input(),
    );
  }
}

