// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_instance_failover_group_args_doc}
/// Arguments for getInstanceFailoverGroup.
/// {@endtemplate}
/// {@macro pulumi_sql_get_instance_failover_group_args_doc}
class GetInstanceFailoverGroupArgs {
  /// The name of the failover group.
  final pulumi.Input<String> failoverGroupName;
  /// The name of the region where the resource is located.
  final pulumi.Input<String> locationName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetInstanceFailoverGroupArgs].
  /// [failoverGroupName] The name of the failover group.
  /// [locationName] The name of the region where the resource is located.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  GetInstanceFailoverGroupArgs({
    required String failoverGroupName,
    required String locationName,
    required String resourceGroupName,
  }) :
      failoverGroupName = pulumi.Input.asInput<String>(failoverGroupName),
      locationName = pulumi.Input.asInput<String>(locationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failoverGroupName': failoverGroupName,
      'locationName': locationName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetInstanceFailoverGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceFailoverGroupArgs(
      failoverGroupName: map['failoverGroupName'] as String,
      locationName: map['locationName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

