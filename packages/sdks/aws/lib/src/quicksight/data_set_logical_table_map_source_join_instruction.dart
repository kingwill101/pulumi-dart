// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_set_logical_table_map_source_join_instruction_left_join_key_properties.dart';
import 'data_set_logical_table_map_source_join_instruction_right_join_key_properties.dart';

class DataSetLogicalTableMapSourceJoinInstruction {
  /// Join key properties of the left operand. See left_join_key_properties.
  final pulumi.Input<DataSetLogicalTableMapSourceJoinInstructionLeftJoinKeyProperties?>? leftJoinKeyProperties;
  /// Operand on the left side of a join.
  final pulumi.Input<String> leftOperand;
  /// Join instructions provided in the ON clause of a join.
  final pulumi.Input<String> onClause;
  /// Join key properties of the right operand. See right_join_key_properties.
  final pulumi.Input<DataSetLogicalTableMapSourceJoinInstructionRightJoinKeyProperties?>? rightJoinKeyProperties;
  /// Operand on the right side of a join.
  final pulumi.Input<String> rightOperand;
  /// Type of join. Valid values are `INNER`, `OUTER`, `LEFT`, and `RIGHT`.
  final pulumi.Input<String> type;

  /// Creates a new [DataSetLogicalTableMapSourceJoinInstruction].
  /// [leftJoinKeyProperties] Join key properties of the left operand. See left_join_key_properties.
  /// [leftOperand] Operand on the left side of a join.
  /// [onClause] Join instructions provided in the ON clause of a join.
  /// [rightJoinKeyProperties] Join key properties of the right operand. See right_join_key_properties.
  /// [rightOperand] Operand on the right side of a join.
  /// [type] Type of join. Valid values are `INNER`, `OUTER`, `LEFT`, and `RIGHT`.
  const DataSetLogicalTableMapSourceJoinInstruction({
    this.leftJoinKeyProperties,
    required this.leftOperand,
    required this.onClause,
    this.rightJoinKeyProperties,
    required this.rightOperand,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'leftJoinKeyProperties': ?pulumi.Input.mapOptionalInputValue<DataSetLogicalTableMapSourceJoinInstructionLeftJoinKeyProperties, Map<String, dynamic>>(leftJoinKeyProperties, (value) => value.toMap()),
      'leftOperand': leftOperand,
      'onClause': onClause,
      'rightJoinKeyProperties': ?pulumi.Input.mapOptionalInputValue<DataSetLogicalTableMapSourceJoinInstructionRightJoinKeyProperties, Map<String, dynamic>>(rightJoinKeyProperties, (value) => value.toMap()),
      'rightOperand': rightOperand,
      'type': type,
    };
  }

  factory DataSetLogicalTableMapSourceJoinInstruction.fromMap(Map<String, dynamic> map) {
    return DataSetLogicalTableMapSourceJoinInstruction(
      leftJoinKeyProperties: (() { final guardedValue = map['leftJoinKeyProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataSetLogicalTableMapSourceJoinInstructionLeftJoinKeyProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      leftOperand: pulumi.Input.fromValue(map['leftOperand'] as String),
      onClause: pulumi.Input.fromValue(map['onClause'] as String),
      rightJoinKeyProperties: (() { final guardedValue = map['rightJoinKeyProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataSetLogicalTableMapSourceJoinInstructionRightJoinKeyProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rightOperand: pulumi.Input.fromValue(map['rightOperand'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
