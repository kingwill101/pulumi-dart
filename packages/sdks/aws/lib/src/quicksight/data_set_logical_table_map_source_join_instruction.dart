// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_set_logical_table_map_source_join_instruction_left_join_key_properties.dart';
import 'data_set_logical_table_map_source_join_instruction_right_join_key_properties.dart';

class DataSetLogicalTableMapSourceJoinInstruction {
  /// Join key properties of the left operand. See left_join_key_properties.
  final pulumi.Input<DataSetLogicalTableMapSourceJoinInstructionLeftJoinKeyProperties>? leftJoinKeyProperties;
  /// Operand on the left side of a join.
  final pulumi.Input<String> leftOperand;
  /// Join instructions provided in the ON clause of a join.
  final pulumi.Input<String> onClause;
  /// Join key properties of the right operand. See right_join_key_properties.
  final pulumi.Input<DataSetLogicalTableMapSourceJoinInstructionRightJoinKeyProperties>? rightJoinKeyProperties;
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
  DataSetLogicalTableMapSourceJoinInstruction({
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
      leftJoinKeyProperties: map['leftJoinKeyProperties'] == null ? null : (DataSetLogicalTableMapSourceJoinInstructionLeftJoinKeyProperties.fromMap((map['leftJoinKeyProperties'] as Map).cast<String, dynamic>())).input(),
      leftOperand: (map['leftOperand'] as String).input(),
      onClause: (map['onClause'] as String).input(),
      rightJoinKeyProperties: map['rightJoinKeyProperties'] == null ? null : (DataSetLogicalTableMapSourceJoinInstructionRightJoinKeyProperties.fromMap((map['rightJoinKeyProperties'] as Map).cast<String, dynamic>())).input(),
      rightOperand: (map['rightOperand'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

