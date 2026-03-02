// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Elastic Volume Export Policy Rule
class ElasticExportPolicyRule {
  /// Client ingress specification for the export policy as list of IPv4 CIDRs, IPv4 host addresses and host names.
  final pulumi.Input<List<String>>? allowedClients;
  /// Allows clients to access the volume with the NFSv3 protocol. Enable only for NFSv3 type volumes
  final pulumi.Input<String>? nfsv3;
  /// Allows clients to access the volume with at least NFSv4.1 protocol.
  final pulumi.Input<String>? nfsv4;
  /// Indicates whether root access to the volume is granted to clients affected by this rule
  final pulumi.Input<String>? rootAccess;
  /// Controls the priority of the export policy rule. When connecting to the volume the rule with the lowest index that applies to the connecting client is used
  final pulumi.Input<int>? ruleIndex;
  /// Specifies the Unix file access level for the volume. It encompasses both read-only and read-write permissions. Additionally, NoAccess can be set to block all access to the volume
  final pulumi.Input<String>? unixAccessRule;

  /// Creates a new [ElasticExportPolicyRule].
  /// [allowedClients] Client ingress specification for the export policy as list of IPv4 CIDRs, IPv4 host addresses and host names.
  /// [nfsv3] Allows clients to access the volume with the NFSv3 protocol. Enable only for NFSv3 type volumes
  /// [nfsv4] Allows clients to access the volume with at least NFSv4.1 protocol.
  /// [rootAccess] Indicates whether root access to the volume is granted to clients affected by this rule
  /// [ruleIndex] Controls the priority of the export policy rule. When connecting to the volume the rule with the lowest index that applies to the connecting client is used
  /// [unixAccessRule] Specifies the Unix file access level for the volume. It encompasses both read-only and read-write permissions. Additionally, NoAccess can be set to block all access to the volume
  ElasticExportPolicyRule({
    this.allowedClients,
    this.nfsv3,
    this.nfsv4,
    this.rootAccess,
    this.ruleIndex,
    this.unixAccessRule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedClients': ?allowedClients,
      'nfsv3': ?nfsv3,
      'nfsv4': ?nfsv4,
      'rootAccess': ?rootAccess,
      'ruleIndex': ?ruleIndex,
      'unixAccessRule': ?unixAccessRule,
    };
  }

  factory ElasticExportPolicyRule.fromMap(Map<String, dynamic> map) {
    return ElasticExportPolicyRule(
      allowedClients: map['allowedClients'] == null ? null : ((map['allowedClients'] as List).cast<String>()).input(),
      nfsv3: map['nfsv3'] == null ? null : (map['nfsv3'] as String).input(),
      nfsv4: map['nfsv4'] == null ? null : (map['nfsv4'] as String).input(),
      rootAccess: map['rootAccess'] == null ? null : (map['rootAccess'] as String).input(),
      ruleIndex: map['ruleIndex'] == null ? null : (map['ruleIndex'] as int).input(),
      unixAccessRule: map['unixAccessRule'] == null ? null : (map['unixAccessRule'] as String).input(),
    );
  }
}

