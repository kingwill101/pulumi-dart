// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_set_logical_table_map_source_join_instruction.dart';

class DataSetLogicalTableMapSource {
  /// ARN of the parent data set.
  final pulumi.Input<String>? dataSetArn;
  /// Specifies the result of a join of two logical tables. See join_instruction.
  final pulumi.Input<DataSetLogicalTableMapSourceJoinInstruction>? joinInstruction;
  /// Physical table ID.
  final pulumi.Input<String>? physicalTableId;

  /// Creates a new [DataSetLogicalTableMapSource].
  /// [dataSetArn] ARN of the parent data set.
  /// [joinInstruction] Specifies the result of a join of two logical tables. See join_instruction.
  /// [physicalTableId] Physical table ID.
  const DataSetLogicalTableMapSource({
    this.dataSetArn,
    this.joinInstruction,
    this.physicalTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSetArn': ?dataSetArn,
      'joinInstruction': ?pulumi.Input.mapOptionalInputValue<DataSetLogicalTableMapSourceJoinInstruction, Map<String, dynamic>>(joinInstruction, (value) => value.toMap()),
      'physicalTableId': ?physicalTableId,
    };
  }

  factory DataSetLogicalTableMapSource.fromMap(Map<String, dynamic> map) {
    return DataSetLogicalTableMapSource(
      dataSetArn: (() { final guardedValue = map['dataSetArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      joinInstruction: (() { final guardedValue = map['joinInstruction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataSetLogicalTableMapSourceJoinInstruction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      physicalTableId: (() { final guardedValue = map['physicalTableId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

