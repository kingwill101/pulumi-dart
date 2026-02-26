// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_data_set_logical_table_map_source_join_instruction/get_data_set_logical_table_map_source_join_instruction.dart';

class GetDataSetLogicalTableMapSource {
  final String dataSetArn;
  final List<GetDataSetLogicalTableMapSourceJoinInstruction> joinInstructions;
  final String physicalTableId;

  GetDataSetLogicalTableMapSource({
    required this.dataSetArn,
    required this.joinInstructions,
    required this.physicalTableId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataSetArn'] = dataSetArn;
    map['joinInstructions'] = Input.encodeList<
        GetDataSetLogicalTableMapSourceJoinInstruction,
        Map<String, dynamic>>(joinInstructions, (value) => value.toMap());
    map['physicalTableId'] = physicalTableId;
    return map;
  }

  factory GetDataSetLogicalTableMapSource.fromMap(Map<String, dynamic> map) {
    return GetDataSetLogicalTableMapSource(
      dataSetArn: map['dataSetArn'] as String,
      joinInstructions:
          Input.decodeList<GetDataSetLogicalTableMapSourceJoinInstruction>(
              map['joinInstructions'],
              (value) => GetDataSetLogicalTableMapSourceJoinInstruction.fromMap(
                  (value as Map).cast<String, dynamic>())),
      physicalTableId: map['physicalTableId'] as String,
    );
  }
}
