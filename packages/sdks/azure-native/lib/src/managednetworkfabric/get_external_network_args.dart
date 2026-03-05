// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managednetworkfabric_get_external_network_args_doc}
/// Arguments for getExternalNetwork.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_get_external_network_args_doc}
class GetExternalNetworkArgs {
  /// Name of the External Network.
  final pulumi.Input<String> externalNetworkName;
  /// Name of the L3 Isolation Domain.
  final pulumi.Input<String> l3IsolationDomainName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetExternalNetworkArgs].
  /// [externalNetworkName] Name of the External Network.
  /// [l3IsolationDomainName] Name of the L3 Isolation Domain.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetExternalNetworkArgs({
    required this.externalNetworkName,
    required this.l3IsolationDomainName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalNetworkName': externalNetworkName,
      'l3IsolationDomainName': l3IsolationDomainName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetExternalNetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetExternalNetworkArgs(
      externalNetworkName: pulumi.Input.fromValue(map['externalNetworkName'] as String),
      l3IsolationDomainName: pulumi.Input.fromValue(map['l3IsolationDomainName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

