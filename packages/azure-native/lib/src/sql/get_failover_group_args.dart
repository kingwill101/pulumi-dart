// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_failover_group_args_doc}
/// Arguments for getFailoverGroup.
/// {@endtemplate}
/// {@macro pulumi_sql_get_failover_group_args_doc}
class GetFailoverGroupArgs {
  /// The name of the failover group.
  final pulumi.Input<String> failoverGroupName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server containing the failover group.
  final pulumi.Input<String> serverName;

  /// Creates a new [GetFailoverGroupArgs].
  /// [failoverGroupName] The name of the failover group.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server containing the failover group.
  GetFailoverGroupArgs({
    required String failoverGroupName,
    required String resourceGroupName,
    required String serverName,
  }) :
      failoverGroupName = pulumi.Input.asInput<String>(failoverGroupName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failoverGroupName': failoverGroupName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory GetFailoverGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetFailoverGroupArgs(
      failoverGroupName: map['failoverGroupName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serverName: map['serverName'] as String,
    );
  }
}

