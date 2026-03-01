// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridnetwork_get_site_network_service_args_doc}
/// Arguments for getSiteNetworkService.
/// {@endtemplate}
/// {@macro pulumi_hybridnetwork_get_site_network_service_args_doc}
class GetSiteNetworkServiceArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the site network service.
  final pulumi.Input<String> siteNetworkServiceName;

  /// Creates a new [GetSiteNetworkServiceArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [siteNetworkServiceName] The name of the site network service.
  GetSiteNetworkServiceArgs({
    required String resourceGroupName,
    required String siteNetworkServiceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      siteNetworkServiceName = pulumi.Input.asInput<String>(siteNetworkServiceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'siteNetworkServiceName': siteNetworkServiceName,
    };
  }

  factory GetSiteNetworkServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetSiteNetworkServiceArgs(
      resourceGroupName: map['resourceGroupName'] as String,
      siteNetworkServiceName: map['siteNetworkServiceName'] as String,
    );
  }
}

