// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_data_set_logical_table_map_source_join_instruction_left_join_key_property/get_data_set_logical_table_map_source_join_instruction_left_join_key_property.dart';
import '../get_data_set_logical_table_map_source_join_instruction_right_join_key_property/get_data_set_logical_table_map_source_join_instruction_right_join_key_property.dart';

class GetDataSetLogicalTableMapSourceJoinInstruction {
  final List<GetDataSetLogicalTableMapSourceJoinInstructionLeftJoinKeyProperty>
      leftJoinKeyProperties;
  final String leftOperand;
  final String onClause;
  final List<GetDataSetLogicalTableMapSourceJoinInstructionRightJoinKeyProperty>
      rightJoinKeyProperties;
  final String rightOperand;
  final String type;

  GetDataSetLogicalTableMapSourceJoinInstruction({
    required this.leftJoinKeyProperties,
    required this.leftOperand,
    required this.onClause,
    required this.rightJoinKeyProperties,
    required this.rightOperand,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['leftJoinKeyProperties'] = pulumi.Input.encodeList<
        GetDataSetLogicalTableMapSourceJoinInstructionLeftJoinKeyProperty,
        Map<String, dynamic>>(leftJoinKeyProperties, (value) => value.toMap());
    map['leftOperand'] = leftOperand;
    map['onClause'] = onClause;
    map['rightJoinKeyProperties'] = pulumi.Input.encodeList<
        GetDataSetLogicalTableMapSourceJoinInstructionRightJoinKeyProperty,
        Map<String, dynamic>>(rightJoinKeyProperties, (value) => value.toMap());
    map['rightOperand'] = rightOperand;
    map['type'] = type;
    return map;
  }

  factory GetDataSetLogicalTableMapSourceJoinInstruction.fromMap(
      Map<String, dynamic> map) {
    return GetDataSetLogicalTableMapSourceJoinInstruction(
      leftJoinKeyProperties: pulumi.Input.decodeList<
              GetDataSetLogicalTableMapSourceJoinInstructionLeftJoinKeyProperty>(
          map['leftJoinKeyProperties'],
          (value) =>
              GetDataSetLogicalTableMapSourceJoinInstructionLeftJoinKeyProperty
                  .fromMap((value as Map).cast<String, dynamic>())),
      leftOperand: map['leftOperand'] as String,
      onClause: map['onClause'] as String,
      rightJoinKeyProperties: pulumi.Input.decodeList<
              GetDataSetLogicalTableMapSourceJoinInstructionRightJoinKeyProperty>(
          map['rightJoinKeyProperties'],
          (value) =>
              GetDataSetLogicalTableMapSourceJoinInstructionRightJoinKeyProperty
                  .fromMap((value as Map).cast<String, dynamic>())),
      rightOperand: map['rightOperand'] as String,
      type: map['type'] as String,
    );
  }
}
