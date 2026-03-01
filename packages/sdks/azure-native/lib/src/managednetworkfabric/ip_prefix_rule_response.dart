// ignore_for_file: unused_element, unnecessary_cast


/// IP Prefix Rule properties.
class IpPrefixRuleResponse {
  /// Action to be taken on the configuration. Example: Permit | Deny.
  final String action;
  /// Specify prefix-list bounds.
  final String? condition;
  /// Network Prefix specifying IPv4/IPv6 packets to be permitted or denied. Example: 1.1.1.0/24 | 3FFE:FFFF:0:CD30::/126
  final String networkPrefix;
  /// Sequence to insert to/delete from existing route. Prefix lists are evaluated starting with the lowest sequence number and continue down the list until a match is made. Once a match is made, the permit or deny statement is applied to that network and the rest of the list is ignored.
  final double sequenceNumber;
  /// SubnetMaskLength gives the minimum NetworkPrefix length to be matched. Possible values for IPv4 are 1 - 32 . Possible values of IPv6 are 1 - 128.
  final String? subnetMaskLength;

  /// Creates a new [IpPrefixRuleResponse].
  /// [action] Action to be taken on the configuration. Example: Permit | Deny.
  /// [condition] Specify prefix-list bounds.
  /// [networkPrefix] Network Prefix specifying IPv4/IPv6 packets to be permitted or denied. Example: 1.1.1.0/24 | 3FFE:FFFF:0:CD30::/126
  /// [sequenceNumber] Sequence to insert to/delete from existing route. Prefix lists are evaluated starting with the lowest sequence number and continue down the list until a match is made. Once a match is made, the permit or deny statement is applied to that network and the rest of the list is ignored.
  /// [subnetMaskLength] SubnetMaskLength gives the minimum NetworkPrefix length to be matched. Possible values for IPv4 are 1 - 32 . Possible values of IPv6 are 1 - 128.
  IpPrefixRuleResponse({
    required this.action,
    this.condition,
    required this.networkPrefix,
    required this.sequenceNumber,
    this.subnetMaskLength,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'condition': ?condition,
      'networkPrefix': networkPrefix,
      'sequenceNumber': sequenceNumber,
      'subnetMaskLength': ?subnetMaskLength,
    };
  }

  factory IpPrefixRuleResponse.fromMap(Map<String, dynamic> map) {
    return IpPrefixRuleResponse(
      action: map['action'] as String,
      condition: map['condition'] == null ? null : map['condition'] as String,
      networkPrefix: map['networkPrefix'] as String,
      sequenceNumber: map['sequenceNumber'] as double,
      subnetMaskLength: map['subnetMaskLength'] == null ? null : map['subnetMaskLength'] as String,
    );
  }
}

