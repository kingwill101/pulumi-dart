// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managednetworkfabric_get_ip_community_args_doc}
/// Arguments for getIpCommunity.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_get_ip_community_args_doc}
class GetIpCommunityArgs {
  /// Name of the IP Community.
  final pulumi.Input<String> ipCommunityName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetIpCommunityArgs].
  /// [ipCommunityName] Name of the IP Community.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetIpCommunityArgs({
    required pulumi.Output<String> ipCommunityName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      ipCommunityName = pulumi.Input.asInput<String>(ipCommunityName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipCommunityName': ipCommunityName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetIpCommunityArgs.fromMap(Map<String, dynamic> map) {
    return GetIpCommunityArgs(
      ipCommunityName: pulumi.Output.create<String>(map['ipCommunityName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

