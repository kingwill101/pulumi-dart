// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_horizondb_get_horizon_db_parameter_group_args_doc}
/// Arguments for getHorizonDbParameterGroup.
/// {@endtemplate}
/// {@macro pulumi_horizondb_get_horizon_db_parameter_group_args_doc}
class GetHorizonDbParameterGroupArgs {
  /// The name of the HorizonDB parameter group.
  final pulumi.Input<String> parameterGroupName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetHorizonDbParameterGroupArgs].
  /// [parameterGroupName] The name of the HorizonDB parameter group.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetHorizonDbParameterGroupArgs({
    required this.parameterGroupName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterGroupName': parameterGroupName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetHorizonDbParameterGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetHorizonDbParameterGroupArgs(
      parameterGroupName: pulumi.Input.fromValue(map['parameterGroupName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
