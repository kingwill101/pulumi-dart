// ignore_for_file: unused_element, unnecessary_cast


/// Defines the port condition that needs to be matched.
class AccessControlListPortCondition {
  /// List of protocol flags that need to be matched. Example: established | initial | <List-of-TCP-flags>. List of eligible TCP Flags are ack, fin, not-ack, not-fin, not-psh, not-rst, not-syn, not-urg, psh, rst, syn, urg
  final List<String>? flags;
  /// Layer4 protocol type that needs to be matched.
  final String layer4Protocol;
  /// List of the port Group Names that need to be matched.
  final List<String>? portGroupNames;
  /// Port type that needs to be matched.
  final String? portType;
  /// List of the Ports that need to be matched.
  final List<String>? ports;

  /// Creates a new [AccessControlListPortCondition].
  /// [flags] List of protocol flags that need to be matched. Example: established | initial | <List-of-TCP-flags>. List of eligible TCP Flags are ack, fin, not-ack, not-fin, not-psh, not-rst, not-syn, not-urg, psh, rst, syn, urg
  /// [layer4Protocol] Layer4 protocol type that needs to be matched.
  /// [portGroupNames] List of the port Group Names that need to be matched.
  /// [portType] Port type that needs to be matched.
  /// [ports] List of the Ports that need to be matched.
  AccessControlListPortCondition({
    this.flags,
    required this.layer4Protocol,
    this.portGroupNames,
    this.portType,
    this.ports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flags': ?flags,
      'layer4Protocol': layer4Protocol,
      'portGroupNames': ?portGroupNames,
      'portType': ?portType,
      'ports': ?ports,
    };
  }

  factory AccessControlListPortCondition.fromMap(Map<String, dynamic> map) {
    return AccessControlListPortCondition(
      flags: map['flags'] == null ? null : (map['flags'] as List).cast<String>(),
      layer4Protocol: map['layer4Protocol'] as String,
      portGroupNames: map['portGroupNames'] == null ? null : (map['portGroupNames'] as List).cast<String>(),
      portType: map['portType'] == null ? null : map['portType'] as String,
      ports: map['ports'] == null ? null : (map['ports'] as List).cast<String>(),
    );
  }
}

