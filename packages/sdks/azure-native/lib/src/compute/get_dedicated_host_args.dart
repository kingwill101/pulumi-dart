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
      expand: map['expand'] == null ? null : (map['expand'] as String).input(),
      hostGroupName: (map['hostGroupName'] as String).input(),
      hostName: (map['hostName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

