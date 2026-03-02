// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworkAclsAclIngressAclEntry {
  /// Description of the entry direction rule.
  final pulumi.Input<String> description;
  /// The name of the entry direction rule entry.
  final pulumi.Input<String> networkAclEntryName;
  /// The authorization policy.
  final pulumi.Input<String> policy;
  /// Source port range.
  final pulumi.Input<String> port;
  /// Transport layer protocol.
  final pulumi.Input<String> protocol;
  /// The source address field.
  final pulumi.Input<String> sourceCidrIp;

  /// Creates a new [GetNetworkAclsAclIngressAclEntry].
  /// [description] Description of the entry direction rule.
  /// [networkAclEntryName] The name of the entry direction rule entry.
  /// [policy] The authorization policy.
  /// [port] Source port range.
  /// [protocol] Transport layer protocol.
  /// [sourceCidrIp] The source address field.
  GetNetworkAclsAclIngressAclEntry({
    required this.description,
    required this.networkAclEntryName,
    required this.policy,
    required this.port,
    required this.protocol,
    required this.sourceCidrIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'networkAclEntryName': networkAclEntryName,
      'policy': policy,
      'port': port,
      'protocol': protocol,
      'sourceCidrIp': sourceCidrIp,
    };
  }

  factory GetNetworkAclsAclIngressAclEntry.fromMap(Map<String, dynamic> map) {
    return GetNetworkAclsAclIngressAclEntry(
      description: (map['description'] as String).input(),
      networkAclEntryName: (map['networkAclEntryName'] as String).input(),
      policy: (map['policy'] as String).input(),
      port: (map['port'] as String).input(),
      protocol: (map['protocol'] as String).input(),
      sourceCidrIp: (map['sourceCidrIp'] as String).input(),
    );
  }
}

