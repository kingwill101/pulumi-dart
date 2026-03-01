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
    required String failoverGroupName,
    required String resourceGroupName,
    required String sqlManagedInstanceName,
  }) :
      failoverGroupName = pulumi.Input.asInput<String>(failoverGroupName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sqlManagedInstanceName = pulumi.Input.asInput<String>(sqlManagedInstanceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failoverGroupName': failoverGroupName,
      'resourceGroupName': resourceGroupName,
      'sqlManagedInstanceName': sqlManagedInstanceName,
    };
  }

  factory GetFailoverGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetFailoverGroupArgs(
      failoverGroupName: map['failoverGroupName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sqlManagedInstanceName: map['sqlManagedInstanceName'] as String,
    );
  }
}

