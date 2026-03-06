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
  const GetRdsParameterGroupsGroup({
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
      engine: pulumi.Input.fromValue(map['engine'] as String),
      engineVersion: pulumi.Input.fromValue(map['engineVersion'] as String),
      forceRestart: pulumi.Input.fromValue(map['forceRestart'] as int),
      id: pulumi.Input.fromValue(map['id'] as String),
      paramCounts: pulumi.Input.fromValue(map['paramCounts'] as int),
      paramDetails: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRdsParameterGroupsGroupParamDetail>(map['paramDetails']!, (value) => GetRdsParameterGroupsGroupParamDetail.fromMap((value as Map).cast<String, dynamic>()))),
      parameterGroupDesc: pulumi.Input.fromValue(map['parameterGroupDesc'] as String),
      parameterGroupId: pulumi.Input.fromValue(map['parameterGroupId'] as String),
      parameterGroupName: pulumi.Input.fromValue(map['parameterGroupName'] as String),
      parameterGroupType: pulumi.Input.fromValue(map['parameterGroupType'] as int),
    );
  }
}

