// ignore_for_file: unused_element, unnecessary_cast


class GetFirewallTemplatesFirewallTemplateInbound {
  final String action;
  final String description;
  final List<String> ipv4s;
  final List<String> ipv6s;
  final String label;
  final String ports;
  final String protocol;

  /// Creates a new [GetFirewallTemplatesFirewallTemplateInbound].
  /// [action] Required.
  /// [description] Required.
  /// [ipv4s] Required.
  /// [ipv6s] Required.
  /// [label] Required.
  /// [ports] Required.
  /// [protocol] Required.
  GetFirewallTemplatesFirewallTemplateInbound({
    required this.action,
    required this.description,
    required this.ipv4s,
    required this.ipv6s,
    required this.label,
    required this.ports,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'description': description,
      'ipv4s': ipv4s,
      'ipv6s': ipv6s,
      'label': label,
      'ports': ports,
      'protocol': protocol,
    };
  }

  factory GetFirewallTemplatesFirewallTemplateInbound.fromMap(Map<String, dynamic> map) {
    return GetFirewallTemplatesFirewallTemplateInbound(
      action: map['action'] as String,
      description: map['description'] as String,
      ipv4s: (map['ipv4s'] as List).cast<String>(),
      ipv6s: (map['ipv6s'] as List).cast<String>(),
      label: map['label'] as String,
      ports: map['ports'] as String,
      protocol: map['protocol'] as String,
    );
  }
}

