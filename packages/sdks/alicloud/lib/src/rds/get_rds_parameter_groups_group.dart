// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_rds_parameter_groups_group_param_detail.dart';

class GetRdsParameterGroupsGroup {
  final pulumi.Input<String> engine;
  final pulumi.Input<String> engineVersion;
  final pulumi.Input<int> forceRestart;
  final pulumi.Input<String> id;
  final pulumi.Input<int> paramCounts;
  final pulumi.Input<List<GetRdsParameterGroupsGroupParamDetail>> paramDetails;
  final pulumi.Input<String> parameterGroupDesc;
  final pulumi.Input<String> parameterGroupId;
  final pulumi.Input<String> parameterGroupName;
  final pulumi.Input<int> parameterGroupType;

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
      'paramDetails': pulumi.Input.mapInputValue<List<GetRdsParameterGroupsGroupParamDetail>, List<Map<String, dynamic>>>(paramDetails, (value) => pulumi.Input.encodeList<GetRdsParameterGroupsGroupParamDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parameterGroupDesc': parameterGroupDesc,
      'parameterGroupId': parameterGroupId,
      'parameterGroupName': parameterGroupName,
      'parameterGroupType': parameterGroupType,
    };
  }

  factory GetRdsParameterGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetRdsParameterGroupsGroup(
      engine: (map['engine'] as String).input(),
      engineVersion: (map['engineVersion'] as String).input(),
      forceRestart: (map['forceRestart'] as int).input(),
      id: (map['id'] as String).input(),
      paramCounts: (map['paramCounts'] as int).input(),
      paramDetails: (pulumi.Input.decodeList<GetRdsParameterGroupsGroupParamDetail>(map['paramDetails'], (value) => GetRdsParameterGroupsGroupParamDetail.fromMap((value as Map).cast<String, dynamic>()))).input(),
      parameterGroupDesc: (map['parameterGroupDesc'] as String).input(),
      parameterGroupId: (map['parameterGroupId'] as String).input(),
      parameterGroupName: (map['parameterGroupName'] as String).input(),
      parameterGroupType: (map['parameterGroupType'] as int).input(),
    );
  }
}

