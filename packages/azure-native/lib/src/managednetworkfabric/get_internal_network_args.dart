// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managednetworkfabric_get_internal_network_args_doc}
/// Arguments for getInternalNetwork.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_get_internal_network_args_doc}
class GetInternalNetworkArgs {
  /// Name of the Internal Network.
  final pulumi.Input<String> internalNetworkName;
  /// Name of the L3 Isolation Domain.
  final pulumi.Input<String> l3IsolationDomainName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetInternalNetworkArgs].
  /// [internalNetworkName] Name of the Internal Network.
  /// [l3IsolationDomainName] Name of the L3 Isolation Domain.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetInternalNetworkArgs({
    required String internalNetworkName,
    required String l3IsolationDomainName,
    required String resourceGroupName,
  }) :
      internalNetworkName = pulumi.Input.asInput<String>(internalNetworkName),
      l3IsolationDomainName = pulumi.Input.asInput<String>(l3IsolationDomainName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'internalNetworkName': internalNetworkName,
      'l3IsolationDomainName': l3IsolationDomainName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetInternalNetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetInternalNetworkArgs(
      internalNetworkName: map['internalNetworkName'] as String,
      l3IsolationDomainName: map['l3IsolationDomainName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

