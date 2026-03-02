// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rds_parameter_group_param_detail.dart';

/// Input properties used for looking up and filtering RdsParameterGroup resources.
class RdsParameterGroupState {
  /// The database engine. Valid values: `mysql`, `mariadb`, `PostgreSQL`.
  final pulumi.Input<String>? engine;
  /// The version of the database engine. Valid values: mysql: `5.1`, `5.5`, `5.6`, `5.7`, `8.0`; mariadb: `10.3`; PostgreSQL: `10.0`, `11.0`, `12.0`, `13.0`, `14.0`, `15.0`.
  final pulumi.Input<String>? engineVersion;
  /// Parameter list. See `param_detail` below.
  final pulumi.Input<List<RdsParameterGroupParamDetail>>? paramDetails;
  /// The description of the parameter template.
  final pulumi.Input<String>? parameterGroupDesc;
  /// The name of the parameter template.
  final pulumi.Input<String>? parameterGroupName;

  /// Creates a new [RdsParameterGroupState].
  /// [engine] The database engine. Valid values: `mysql`, `mariadb`, `PostgreSQL`.
  /// [engineVersion] The version of the database engine. Valid values: mysql: `5.1`, `5.5`, `5.6`, `5.7`, `8.0`; mariadb: `10.3`; PostgreSQL: `10.0`, `11.0`, `12.0`, `13.0`, `14.0`, `15.0`.
  /// [paramDetails] Parameter list. See `param_detail` below.
  /// [parameterGroupDesc] The description of the parameter template.
  /// [parameterGroupName] The name of the parameter template.
  RdsParameterGroupState({
    this.engine,
    this.engineVersion,
    this.paramDetails,
    this.parameterGroupDesc,
    this.parameterGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'paramDetails': ?pulumi.Input.mapOptionalInputValue<List<RdsParameterGroupParamDetail>, List<Map<String, dynamic>>>(paramDetails, (value) => pulumi.Input.encodeList<RdsParameterGroupParamDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parameterGroupDesc': ?parameterGroupDesc,
      'parameterGroupName': ?parameterGroupName,
    };
  }

  factory RdsParameterGroupState.fromMap(Map<String, dynamic> map) {
    return RdsParameterGroupState(
      engine: map['engine'] == null ? null : (map['engine']! as String).input(),
      engineVersion: map['engineVersion'] == null ? null : (map['engineVersion']! as String).input(),
      paramDetails: map['paramDetails'] == null ? null : (pulumi.Input.decodeList<RdsParameterGroupParamDetail>(map['paramDetails']!, (value) => RdsParameterGroupParamDetail.fromMap((value as Map).cast<String, dynamic>()))).input(),
      parameterGroupDesc: map['parameterGroupDesc'] == null ? null : (map['parameterGroupDesc']! as String).input(),
      parameterGroupName: map['parameterGroupName'] == null ? null : (map['parameterGroupName']! as String).input(),
    );
  }
}

