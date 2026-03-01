// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_ip_allocation_args_doc}
/// Arguments for getIpAllocation.
/// {@endtemplate}
/// {@macro pulumi_network_get_ip_allocation_args_doc}
class GetIpAllocationArgs {
  /// Expands referenced resources.
  final pulumi.Input<String>? expand;
  /// The name of the IpAllocation.
  final pulumi.Input<String> ipAllocationName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetIpAllocationArgs].
  /// [expand] Expands referenced resources.
  /// [ipAllocationName] The name of the IpAllocation.
  /// [resourceGroupName] The name of the resource group.
  GetIpAllocationArgs({
    String? expand,
    required String ipAllocationName,
    required String resourceGroupName,
  }) :
      expand = pulumi.Input.asOptionalInput<String>(expand),
      ipAllocationName = pulumi.Input.asInput<String>(ipAllocationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'ipAllocationName': ipAllocationName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetIpAllocationArgs.fromMap(Map<String, dynamic> map) {
    return GetIpAllocationArgs(
      expand: map['expand'] == null ? null : map['expand'] as String,
      ipAllocationName: map['ipAllocationName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

