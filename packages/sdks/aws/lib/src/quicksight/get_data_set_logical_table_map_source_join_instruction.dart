// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_set_logical_table_map_source_join_instruction_left_join_key_property.dart';
import 'get_data_set_logical_table_map_source_join_instruction_right_join_key_property.dart';

class GetDataSetLogicalTableMapSourceJoinInstruction {
  final pulumi.Input<List<GetDataSetLogicalTableMapSourceJoinInstructionLeftJoinKeyProperty>> leftJoinKeyProperties;
  final pulumi.Input<String> leftOperand;
  final pulumi.Input<String> onClause;
  final pulumi.Input<List<GetDataSetLogicalTableMapSourceJoinInstructionRightJoinKeyProperty>> rightJoinKeyProperties;
  final pulumi.Input<String> rightOperand;
  final pulumi.Input<String> type;

  /// Creates a new [GetDataSetLogicalTableMapSourceJoinInstruction].
  /// [leftJoinKeyProperties] Required.
  /// [leftOperand] Required.
  /// [onClause] Required.
  /// [rightJoinKeyProperties] Required.
  /// [rightOperand] Required.
  /// [type] Required.
  GetDataSetLogicalTableMapSourceJoinInstruction({
    required this.leftJoinKeyProperties,
    required this.leftOperand,
    required this.onClause,
    required this.rightJoinKeyProperties,
    required this.rightOperand,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'leftJoinKeyProperties': pulumi.Input.mapInputValue<List<GetDataSetLogicalTableMapSourceJoinInstructionLeftJoinKeyProperty>, List<Map<String, dynamic>>>(leftJoinKeyProperties, (value) => pulumi.Input.encodeList<GetDataSetLogicalTableMapSourceJoinInstructionLeftJoinKeyProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'leftOperand': leftOperand,
      'onClause': onClause,
      'rightJoinKeyProperties': pulumi.Input.mapInputValue<List<GetDataSetLogicalTableMapSourceJoinInstructionRightJoinKeyProperty>, List<Map<String, dynamic>>>(rightJoinKeyProperties, (value) => pulumi.Input.encodeList<GetDataSetLogicalTableMapSourceJoinInstructionRightJoinKeyProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rightOperand': rightOperand,
      'type': type,
    };
  }

  factory GetDataSetLogicalTableMapSourceJoinInstruction.fromMap(Map<String, dynamic> map) {
    return GetDataSetLogicalTableMapSourceJoinInstruction(
      leftJoinKeyProperties: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDataSetLogicalTableMapSourceJoinInstructionLeftJoinKeyProperty>(map['leftJoinKeyProperties']!, (value) => GetDataSetLogicalTableMapSourceJoinInstructionLeftJoinKeyProperty.fromMap((value as Map).cast<String, dynamic>()))),
      leftOperand: pulumi.Input.fromValue(map['leftOperand'] as String),
      onClause: pulumi.Input.fromValue(map['onClause'] as String),
      rightJoinKeyProperties: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDataSetLogicalTableMapSourceJoinInstructionRightJoinKeyProperty>(map['rightJoinKeyProperties']!, (value) => GetDataSetLogicalTableMapSourceJoinInstructionRightJoinKeyProperty.fromMap((value as Map).cast<String, dynamic>()))),
      rightOperand: pulumi.Input.fromValue(map['rightOperand'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

