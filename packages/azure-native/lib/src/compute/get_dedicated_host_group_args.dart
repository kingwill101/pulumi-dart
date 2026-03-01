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
  GetDedicatedHostGroupArgs({
    String? expand,
    required String hostGroupName,
    required String resourceGroupName,
  }) :
      expand = pulumi.Input.asOptionalInput<String>(expand),
      hostGroupName = pulumi.Input.asInput<String>(hostGroupName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'hostGroupName': hostGroupName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDedicatedHostGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHostGroupArgs(
      expand: map['expand'] == null ? null : map['expand'] as String,
      hostGroupName: map['hostGroupName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

