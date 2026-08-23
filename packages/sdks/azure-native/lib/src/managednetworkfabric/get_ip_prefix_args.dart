// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managednetworkfabric_get_ip_prefix_args_doc}
/// Arguments for getIpPrefix.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_get_ip_prefix_args_doc}
class GetIpPrefixArgs {
  /// Name of the IP Prefix.
  final pulumi.Input<String> ipPrefixName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetIpPrefixArgs].
  /// [ipPrefixName] Name of the IP Prefix.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetIpPrefixArgs({
    required this.ipPrefixName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipPrefixName': ipPrefixName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetIpPrefixArgs.fromMap(Map<String, dynamic> map) {
    return GetIpPrefixArgs(
      ipPrefixName: pulumi.Input.fromValue(map['ipPrefixName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
