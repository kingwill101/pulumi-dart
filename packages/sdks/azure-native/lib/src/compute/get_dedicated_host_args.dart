// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_dedicated_host_args_doc}
/// Arguments for getDedicatedHost.
/// {@endtemplate}
/// {@macro pulumi_compute_get_dedicated_host_args_doc}
class GetDedicatedHostArgs {
  /// The expand expression to apply on the operation. 'InstanceView' will retrieve the list of instance views of the dedicated host. 'UserData' is not supported for dedicated host.
  final pulumi.Input<String>? expand;

  /// The name of the dedicated host group.
  final pulumi.Input<String> hostGroupName;

  /// The name of the dedicated host.
  final pulumi.Input<String> hostName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDedicatedHostArgs].
  /// [expand] The expand expression to apply on the operation. 'InstanceView' will retrieve the list of instance views of the dedicated host. 'UserData' is not supported for dedicated host.
  /// [hostGroupName] The name of the dedicated host group.
  /// [hostName] The name of the dedicated host.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDedicatedHostArgs({
    this.expand,
    required this.hostGroupName,
    required this.hostName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'hostGroupName': hostGroupName,
      'hostName': hostName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDedicatedHostArgs.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHostArgs(
      expand: (() {
        final guardedValue = map['expand'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hostGroupName: pulumi.Input.fromValue(map['hostGroupName'] as String),
      hostName: pulumi.Input.fromValue(map['hostName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
