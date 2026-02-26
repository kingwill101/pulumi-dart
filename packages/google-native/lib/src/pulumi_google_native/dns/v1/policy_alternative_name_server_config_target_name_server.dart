// ignore_for_file: unused_element, unnecessary_cast

import 'policy_alternative_name_server_config_target_name_server_forwarding_path.dart';

class PolicyAlternativeNameServerConfigTargetNameServer {
  /// Forwarding path for this TargetNameServer. If unset or set to DEFAULT, Cloud DNS makes forwarding decisions based on address ranges; that is, RFC1918 addresses go to the VPC network, non-RFC1918 addresses go to the internet. When set to PRIVATE, Cloud DNS always sends queries through the VPC network for this target.
  final PolicyAlternativeNameServerConfigTargetNameServerForwardingPath?
      forwardingPath;

  /// IPv4 address to forward queries to.
  final String? ipv4Address;

  /// IPv6 address to forward to. Does not accept both fields (ipv4 & ipv6) being populated. Public preview as of November 2022.
  final String? ipv6Address;
  final String? kind;

  PolicyAlternativeNameServerConfigTargetNameServer({
    this.forwardingPath,
    this.ipv4Address,
    this.ipv6Address,
    this.kind,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final forwardingPathValue = forwardingPath;
    if (forwardingPathValue != null) {
      map['forwardingPath'] = forwardingPathValue.value;
    }
    final ipv4AddressValue = ipv4Address;
    if (ipv4AddressValue != null) {
      map['ipv4Address'] = ipv4AddressValue;
    }
    final ipv6AddressValue = ipv6Address;
    if (ipv6AddressValue != null) {
      map['ipv6Address'] = ipv6AddressValue;
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    return map;
  }

  factory PolicyAlternativeNameServerConfigTargetNameServer.fromMap(
      Map<String, dynamic> map) {
    return PolicyAlternativeNameServerConfigTargetNameServer(
      forwardingPath: map['forwardingPath'] == null
          ? null
          : PolicyAlternativeNameServerConfigTargetNameServerForwardingPath
              .fromValue(map['forwardingPath'] as String),
      ipv4Address:
          map['ipv4Address'] == null ? null : map['ipv4Address'] as String,
      ipv6Address:
          map['ipv6Address'] == null ? null : map['ipv6Address'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
    );
  }
}
