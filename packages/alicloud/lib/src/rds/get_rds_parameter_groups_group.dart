// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_rds_parameter_groups_group_param_detail.dart';

class GetRdsParameterGroupsGroup {
  final String engine;
  final String engineVersion;
  final int forceRestart;
  final String id;
  final int paramCounts;
  final List<GetRdsParameterGroupsGroupParamDetail> paramDetails;
  final String parameterGroupDesc;
  final String parameterGroupId;
  final String parameterGroupName;
  final int parameterGroupType;

  /// Creates a new [GetRdsParameterGroupsGroup].
  /// [engine] Required.
  /// [engineVersion] Required.
  /// [forceRestart] Required.
  /// [id] Required.
  /// [paramCounts] Required.
  /// [paramDetails] Required.
  /// [parameterGroupDesc] Required.
  /// [parameterGroupId] Required.
  /// [parameterGroupName] Required.
  /// [parameterGroupType] Required.
  GetRdsParameterGroupsGroup({
    required this.engine,
    required this.engineVersion,
    required this.forceRestart,
    required this.id,
    required this.paramCounts,
    required this.paramDetails,
    required this.parameterGroupDesc,
    required this.parameterGroupId,
    required this.parameterGroupName,
    required this.parameterGroupType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engine': engine,
      'engineVersion': engineVersion,
      'forceRestart': forceRestart,
      'id': id,
      'paramCounts': paramCounts,
      'paramDetails': pulumi.Input.encodeList<GetRdsParameterGroupsGroupParamDetail, Map<String, dynamic>>(paramDetails, (value) => value.toMap()),
      'parameterGroupDesc': parameterGroupDesc,
      'parameterGroupId': parameterGroupId,
      'parameterGroupName': parameterGroupName,
      'parameterGroupType': parameterGroupType,
    };
  }

  factory GetRdsParameterGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetRdsParameterGroupsGroup(
      engine: map['engine'] as String,
      engineVersion: map['engineVersion'] as String,
      forceRestart: map['forceRestart'] as int,
      id: map['id'] as String,
      paramCounts: map['paramCounts'] as int,
      paramDetails: pulumi.Input.decodeList<GetRdsParameterGroupsGroupParamDetail>(map['paramDetails'], (value) => GetRdsParameterGroupsGroupParamDetail.fromMap((value as Map).cast<String, dynamic>())),
      parameterGroupDesc: map['parameterGroupDesc'] as String,
      parameterGroupId: map['parameterGroupId'] as String,
      parameterGroupName: map['parameterGroupName'] as String,
      parameterGroupType: map['parameterGroupType'] as int,
    );
  }
}

