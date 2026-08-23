// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_dedicated_host_group_args_doc}
/// Arguments for getDedicatedHostGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_get_dedicated_host_group_args_doc}
class GetDedicatedHostGroupArgs {
  /// The expand expression to apply on the operation. 'InstanceView' will retrieve the list of instance views of the dedicated hosts under the dedicated host group. 'UserData' is not supported for dedicated host group.
  final pulumi.Input<String>? expand;
  /// The name of the dedicated host group.
  final pulumi.Input<String> hostGroupName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDedicatedHostGroupArgs].
  /// [expand] The expand expression to apply on the operation. 'InstanceView' will retrieve the list of instance views of the dedicated hosts under the dedicated host group. 'UserData' is not supported for dedicated host group.
  /// [hostGroupName] The name of the dedicated host group.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetDedicatedHostGroupArgs({
    this.expand,
    required this.hostGroupName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'hostGroupName': hostGroupName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDedicatedHostGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHostGroupArgs(
      expand: (() { final guardedValue = map['expand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostGroupName: pulumi.Input.fromValue(map['hostGroupName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
