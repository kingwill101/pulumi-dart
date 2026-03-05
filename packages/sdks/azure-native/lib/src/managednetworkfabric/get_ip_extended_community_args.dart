// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managednetworkfabric_get_ip_extended_community_args_doc}
/// Arguments for getIpExtendedCommunity.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_get_ip_extended_community_args_doc}
class GetIpExtendedCommunityArgs {
  /// Name of the IP Extended Community.
  final pulumi.Input<String> ipExtendedCommunityName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetIpExtendedCommunityArgs].
  /// [ipExtendedCommunityName] Name of the IP Extended Community.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetIpExtendedCommunityArgs({
    required this.ipExtendedCommunityName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipExtendedCommunityName': ipExtendedCommunityName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetIpExtendedCommunityArgs.fromMap(Map<String, dynamic> map) {
    return GetIpExtendedCommunityArgs(
      ipExtendedCommunityName: pulumi.Input.fromValue(map['ipExtendedCommunityName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

