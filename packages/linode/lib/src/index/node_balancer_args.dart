// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_balancer_vpc.dart';

/// {@template pulumi_index_node_balancer_node_balancer_args_doc}
/// The set of arguments for NodeBalancer.
/// {@endtemplate}
/// {@macro pulumi_index_node_balancer_node_balancer_args_doc}
class NodeBalancerArgs {
  /// Throttle connections per second (0-20). Set to 0 (default) to disable throttling.
  final pulumi.Input<int>? clientConnThrottle;
  /// Throttle UDP sessions per second (0-20). Set to 0 (default) to disable throttling.
  ///
  /// * **NOTE: This argument may not be generally available.**
  final pulumi.Input<int>? clientUdpSessThrottle;
  /// ID for the firewall you'd like to use with this NodeBalancer.
  final pulumi.Input<int>? firewallId;
  /// The label of the Linode NodeBalancer
  final pulumi.Input<String>? label;
  /// The region where this NodeBalancer will be deployed.  Examples are `"us-east"`, `"us-west"`, `"ap-south"`, etc. See all regions [here](https://api.linode.com/v4/regions).  *Changing `region` forces the creation of a new Linode NodeBalancer.*.
  ///
  /// - - -
  final pulumi.Input<String>? region;
  /// A list of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  final pulumi.Input<List<String>>? tags;
  /// A list of VPCs to be assigned to this NodeBalancer.
  final pulumi.Input<List<NodeBalancerVpc>>? vpcs;

  /// Creates a new [NodeBalancerArgs].
  /// [clientConnThrottle] Throttle connections per second (0-20). Set to 0 (default) to disable throttling.
  /// [clientUdpSessThrottle] Throttle UDP sessions per second (0-20). Set to 0 (default) to disable throttling.
  /// [firewallId] ID for the firewall you'd like to use with this NodeBalancer.
  /// [label] The label of the Linode NodeBalancer
  /// [region] The region where this NodeBalancer will be deployed.  Examples are `"us-east"`, `"us-west"`, `"ap-south"`, etc. See all regions [here](https://api.linode.com/v4/regions).  *Changing `region` forces the creation of a new Linode NodeBalancer.*.
  /// [tags] A list of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  /// [vpcs] A list of VPCs to be assigned to this NodeBalancer.
  NodeBalancerArgs({
    int? clientConnThrottle,
    int? clientUdpSessThrottle,
    int? firewallId,
    String? label,
    String? region,
    List<String>? tags,
    List<NodeBalancerVpc>? vpcs,
  }) :
      clientConnThrottle = pulumi.Input.asOptionalInput<int>(clientConnThrottle),
      clientUdpSessThrottle = pulumi.Input.asOptionalInput<int>(clientUdpSessThrottle),
      firewallId = pulumi.Input.asOptionalInput<int>(firewallId),
      label = pulumi.Input.asOptionalInput<String>(label),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      vpcs = pulumi.Input.asOptionalInput<List<NodeBalancerVpc>>(vpcs);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientConnThrottle': ?clientConnThrottle,
      'clientUdpSessThrottle': ?clientUdpSessThrottle,
      'firewallId': ?firewallId,
      'label': ?label,
      'region': ?region,
      'tags': ?tags,
      'vpcs': ?pulumi.Input.mapOptionalInputValue<List<NodeBalancerVpc>, List<Map<String, dynamic>>>(vpcs, (value) => pulumi.Input.encodeList<NodeBalancerVpc, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NodeBalancerArgs.fromMap(Map<String, dynamic> map) {
    return NodeBalancerArgs(
      clientConnThrottle: map['clientConnThrottle'] == null ? null : map['clientConnThrottle'] as int,
      clientUdpSessThrottle: map['clientUdpSessThrottle'] == null ? null : map['clientUdpSessThrottle'] as int,
      firewallId: map['firewallId'] == null ? null : map['firewallId'] as int,
      label: map['label'] == null ? null : map['label'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      vpcs: map['vpcs'] == null ? null : pulumi.Input.decodeList<NodeBalancerVpc>(map['vpcs'], (value) => NodeBalancerVpc.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

