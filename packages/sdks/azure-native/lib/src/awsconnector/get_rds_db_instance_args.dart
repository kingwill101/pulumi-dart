// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_rds_db_instance_args_doc}
/// Arguments for getRdsDbInstance.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_rds_db_instance_args_doc}
class GetRdsDbInstanceArgs {
  /// Name of RdsDBInstance
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetRdsDbInstanceArgs].
  /// [name] Name of RdsDBInstance
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetRdsDbInstanceArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetRdsDbInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetRdsDbInstanceArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

