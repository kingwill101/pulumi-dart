// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for DomainTrust.
class DomainTrustArgs {
  /// The fully qualified domain name. e.g. mydomain.myorganization.com, with the restrictions
  /// of https://cloud.google.com/managed-microsoft-ad/reference/rest/v1/projects.locations.global.domains.
  final Input<String> domain;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Whether the trusted side has forest/domain wide access or selective access to an approved set of resources.
  final Input<bool>? selectiveAuthentication;

  /// The target DNS server IP addresses which can resolve the remote domain involved in the trust.
  final Input<List<String>> targetDnsIpAddresses;

  /// The fully qualified target domain name which will be in trust with the current domain.
  final Input<String> targetDomainName;

  /// The trust direction, which decides if the current domain is trusted, trusting, or both.
  /// Possible values are: `INBOUND`, `OUTBOUND`, `BIDIRECTIONAL`.
  final Input<String> trustDirection;

  /// The trust secret used for the handshake with the target domain. This will not be stored.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final Input<String> trustHandshakeSecret;

  /// The type of trust represented by the trust resource.
  /// Possible values are: `FOREST`, `EXTERNAL`.
  final Input<String> trustType;

  DomainTrustArgs({
    required this.domain,
    this.project,
    this.selectiveAuthentication,
    required this.targetDnsIpAddresses,
    required this.targetDomainName,
    required this.trustDirection,
    required this.trustHandshakeSecret,
    required this.trustType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domain'] = domain;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final selectiveAuthenticationValue = selectiveAuthentication;
    if (selectiveAuthenticationValue != null) {
      map['selectiveAuthentication'] = selectiveAuthenticationValue;
    }
    map['targetDnsIpAddresses'] = targetDnsIpAddresses;
    map['targetDomainName'] = targetDomainName;
    map['trustDirection'] = trustDirection;
    map['trustHandshakeSecret'] = trustHandshakeSecret;
    map['trustType'] = trustType;
    return map;
  }

  factory DomainTrustArgs.fromMap(Map<String, dynamic> map) {
    return DomainTrustArgs(
      domain: Input.asInput<String>(map['domain']),
      project: Input.asOptionalInput<String>(map['project']),
      selectiveAuthentication:
          Input.asOptionalInput<bool>(map['selectiveAuthentication']),
      targetDnsIpAddresses:
          Input.asInput<List<String>>(map['targetDnsIpAddresses']),
      targetDomainName: Input.asInput<String>(map['targetDomainName']),
      trustDirection: Input.asInput<String>(map['trustDirection']),
      trustHandshakeSecret: Input.asInput<String>(map['trustHandshakeSecret']),
      trustType: Input.asInput<String>(map['trustType']),
    );
  }
}
