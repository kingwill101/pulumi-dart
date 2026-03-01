// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_set_logical_table_map_source_join_instruction.dart';

class GetDataSetLogicalTableMapSource {
  final String dataSetArn;
  final List<GetDataSetLogicalTableMapSourceJoinInstruction> joinInstructions;
  final String physicalTableId;

  /// Creates a new [GetDataSetLogicalTableMapSource].
  /// [dataSetArn] Required.
  /// [joinInstructions] Required.
  /// [physicalTableId] Required.
  GetDataSetLogicalTableMapSource({
    required this.dataSetArn,
    required this.joinInstructions,
    required this.physicalTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSetArn': dataSetArn,
      'joinInstructions': pulumi.Input.encodeList<GetDataSetLogicalTableMapSourceJoinInstruction, Map<String, dynamic>>(joinInstructions, (value) => value.toMap()),
      'physicalTableId': physicalTableId,
    };
  }

  factory GetDataSetLogicalTableMapSource.fromMap(Map<String, dynamic> map) {
    return GetDataSetLogicalTableMapSource(
      dataSetArn: map['dataSetArn'] as String,
      joinInstructions: pulumi.Input.decodeList<GetDataSetLogicalTableMapSourceJoinInstruction>(map['joinInstructions'], (value) => GetDataSetLogicalTableMapSourceJoinInstruction.fromMap((value as Map).cast<String, dynamic>())),
      physicalTableId: map['physicalTableId'] as String,
    );
  }
}

