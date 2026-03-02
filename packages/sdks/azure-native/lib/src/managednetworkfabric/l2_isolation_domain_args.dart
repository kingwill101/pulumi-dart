// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managednetworkfabric_l2_isolation_domain_args_doc}
/// The set of arguments for L2IsolationDomain.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_l2_isolation_domain_args_doc}
class L2IsolationDomainArgs {
  /// Switch configuration description.
  final pulumi.Input<String>? annotation;
  /// Name of the L2 Isolation Domain.
  final pulumi.Input<String>? l2IsolationDomainName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Maximum transmission unit. Default value is 1500.
  final pulumi.Input<int>? mtu;
  /// ARM Resource ID of the Network Fabric.
  final pulumi.Input<String> networkFabricId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Vlan Identifier of the Network Fabric. Example: 501.
  final pulumi.Input<int> vlanId;

  /// Creates a new [L2IsolationDomainArgs].
  /// [annotation] Switch configuration description.
  /// [l2IsolationDomainName] Name of the L2 Isolation Domain.
  /// [location] The geo-location where the resource lives
  /// [mtu] Maximum transmission unit. Default value is 1500.
  /// [networkFabricId] ARM Resource ID of the Network Fabric.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [vlanId] Vlan Identifier of the Network Fabric. Example: 501.
  L2IsolationDomainArgs({
    this.annotation,
    this.l2IsolationDomainName,
    this.location,
    this.mtu,
    required this.networkFabricId,
    required this.resourceGroupName,
    this.tags,
    required this.vlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotation': ?annotation,
      'l2IsolationDomainName': ?l2IsolationDomainName,
      'location': ?location,
      'mtu': ?mtu,
      'networkFabricId': networkFabricId,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'vlanId': vlanId,
    };
  }

  factory L2IsolationDomainArgs.fromMap(Map<String, dynamic> map) {
    return L2IsolationDomainArgs(
      annotation: map['annotation'] == null ? null : (map['annotation'] as String).input(),
      l2IsolationDomainName: map['l2IsolationDomainName'] == null ? null : (map['l2IsolationDomainName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      mtu: map['mtu'] == null ? null : (map['mtu'] as int).input(),
      networkFabricId: (map['networkFabricId'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      vlanId: (map['vlanId'] as int).input(),
    );
  }
}

