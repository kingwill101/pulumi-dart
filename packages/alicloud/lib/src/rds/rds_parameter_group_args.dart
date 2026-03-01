// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rds_parameter_group_param_detail.dart';

/// {@template pulumi_rds_rds_parameter_group_rds_parameter_group_args_doc}
/// The set of arguments for RdsParameterGroup.
/// {@endtemplate}
/// {@macro pulumi_rds_rds_parameter_group_rds_parameter_group_args_doc}
class RdsParameterGroupArgs {
  /// The database engine. Valid values: `mysql`, `mariadb`, `PostgreSQL`.
  final pulumi.Input<String> engine;
  /// The version of the database engine. Valid values: mysql: `5.1`, `5.5`, `5.6`, `5.7`, `8.0`; mariadb: `10.3`; PostgreSQL: `10.0`, `11.0`, `12.0`, `13.0`, `14.0`, `15.0`.
  final pulumi.Input<String> engineVersion;
  /// Parameter list. See `param_detail` below.
  final pulumi.Input<List<RdsParameterGroupParamDetail>> paramDetails;
  /// The description of the parameter template.
  final pulumi.Input<String>? parameterGroupDesc;
  /// The name of the parameter template.
  final pulumi.Input<String> parameterGroupName;

  /// Creates a new [RdsParameterGroupArgs].
  /// [engine] The database engine. Valid values: `mysql`, `mariadb`, `PostgreSQL`.
  /// [engineVersion] The version of the database engine. Valid values: mysql: `5.1`, `5.5`, `5.6`, `5.7`, `8.0`; mariadb: `10.3`; PostgreSQL: `10.0`, `11.0`, `12.0`, `13.0`, `14.0`, `15.0`.
  /// [paramDetails] Parameter list. See `param_detail` below.
  /// [parameterGroupDesc] The description of the parameter template.
  /// [parameterGroupName] The name of the parameter template.
  RdsParameterGroupArgs({
    required String engine,
    required String engineVersion,
    required List<RdsParameterGroupParamDetail> paramDetails,
    String? parameterGroupDesc,
    required String parameterGroupName,
  }) :
      engine = pulumi.Input.asInput<String>(engine),
      engineVersion = pulumi.Input.asInput<String>(engineVersion),
      paramDetails = pulumi.Input.asInput<List<RdsParameterGroupParamDetail>>(paramDetails),
      parameterGroupDesc = pulumi.Input.asOptionalInput<String>(parameterGroupDesc),
      parameterGroupName = pulumi.Input.asInput<String>(parameterGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engine': engine,
      'engineVersion': engineVersion,
      'paramDetails': pulumi.Input.mapInputValue<List<RdsParameterGroupParamDetail>, List<Map<String, dynamic>>>(paramDetails, (value) => pulumi.Input.encodeList<RdsParameterGroupParamDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parameterGroupDesc': ?parameterGroupDesc,
      'parameterGroupName': parameterGroupName,
    };
  }

  factory RdsParameterGroupArgs.fromMap(Map<String, dynamic> map) {
    return RdsParameterGroupArgs(
      engine: map['engine'] as String,
      engineVersion: map['engineVersion'] as String,
      paramDetails: pulumi.Input.decodeList<RdsParameterGroupParamDetail>(map['paramDetails'], (value) => RdsParameterGroupParamDetail.fromMap((value as Map).cast<String, dynamic>())),
      parameterGroupDesc: map['parameterGroupDesc'] == null ? null : map['parameterGroupDesc'] as String,
      parameterGroupName: map['parameterGroupName'] as String,
    );
  }
}

