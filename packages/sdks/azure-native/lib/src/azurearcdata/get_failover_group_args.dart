// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurearcdata_get_failover_group_args_doc}
/// Arguments for getFailoverGroup.
/// {@endtemplate}
/// {@macro pulumi_azurearcdata_get_failover_group_args_doc}
class GetFailoverGroupArgs {
  /// The name of the Failover Group
  final pulumi.Input<String> failoverGroupName;

  /// The name of the Azure resource group
  final pulumi.Input<String> resourceGroupName;

  /// Name of SQL Managed Instance
  final pulumi.Input<String> sqlManagedInstanceName;

  /// Creates a new [GetFailoverGroupArgs].
  /// [failoverGroupName] The name of the Failover Group
  /// [resourceGroupName] The name of the Azure resource group
  /// [sqlManagedInstanceName] Name of SQL Managed Instance
  GetFailoverGroupArgs({
    required this.failoverGroupName,
    required this.resourceGroupName,
    required this.sqlManagedInstanceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failoverGroupName': failoverGroupName,
      'resourceGroupName': resourceGroupName,
      'sqlManagedInstanceName': sqlManagedInstanceName,
    };
  }

  factory GetFailoverGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetFailoverGroupArgs(
      failoverGroupName: pulumi.Input.fromValue(
        map['failoverGroupName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      sqlManagedInstanceName: pulumi.Input.fromValue(
        map['sqlManagedInstanceName'] as String,
      ),
    );
  }
}
