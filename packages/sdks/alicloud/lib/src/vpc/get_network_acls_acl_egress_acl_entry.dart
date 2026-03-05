// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworkAclsAclEgressAclEntry {
  /// Give the description information of the direction rule.
  final pulumi.Input<String> description;
  /// The destination address segment.
  final pulumi.Input<String> destinationCidrIp;
  /// The name of the entry for the direction rule.
  final pulumi.Input<String> networkAclEntryName;
  /// The  authorization policy.
  final pulumi.Input<String> policy;
  /// Destination port range.
  final pulumi.Input<String> port;
  /// Transport  layer protocol.
  final pulumi.Input<String> protocol;

  /// Creates a new [GetNetworkAclsAclEgressAclEntry].
  /// [description] Give the description information of the direction rule.
  /// [destinationCidrIp] The destination address segment.
  /// [networkAclEntryName] The name of the entry for the direction rule.
  /// [policy] The  authorization policy.
  /// [port] Destination port range.
  /// [protocol] Transport  layer protocol.
  GetNetworkAclsAclEgressAclEntry({
    required this.description,
    required this.destinationCidrIp,
    required this.networkAclEntryName,
    required this.policy,
    required this.port,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'destinationCidrIp': destinationCidrIp,
      'networkAclEntryName': networkAclEntryName,
      'policy': policy,
      'port': port,
      'protocol': protocol,
    };
  }

  factory GetNetworkAclsAclEgressAclEntry.fromMap(Map<String, dynamic> map) {
    return GetNetworkAclsAclEgressAclEntry(
      description: pulumi.Input.fromValue(map['description'] as String),
      destinationCidrIp: pulumi.Input.fromValue(map['destinationCidrIp'] as String),
      networkAclEntryName: pulumi.Input.fromValue(map['networkAclEntryName'] as String),
      policy: pulumi.Input.fromValue(map['policy'] as String),
      port: pulumi.Input.fromValue(map['port'] as String),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
    );
  }
}

