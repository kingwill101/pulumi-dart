// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for DomainTrust.
class DomainTrustArgs {
  /// The fully qualified domain name. e.g. mydomain.myorganization.com, with the restrictions
  /// of https://cloud.google.com/managed-microsoft-ad/reference/rest/v1/projects.locations.global.domains.
  final pulumi.Input<String> domain;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Whether the trusted side has forest/domain wide access or selective access to an approved set of resources.
  final pulumi.Input<bool>? selectiveAuthentication;

  /// The target DNS server IP addresses which can resolve the remote domain involved in the trust.
  final pulumi.Input<List<String>> targetDnsIpAddresses;

  /// The fully qualified target domain name which will be in trust with the current domain.
  final pulumi.Input<String> targetDomainName;

  /// The trust direction, which decides if the current domain is trusted, trusting, or both.
  /// Possible values are: `INBOUND`, `OUTBOUND`, `BIDIRECTIONAL`.
  final pulumi.Input<String> trustDirection;

  /// The trust secret used for the handshake with the target domain. This will not be stored.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String> trustHandshakeSecret;

  /// The type of trust represented by the trust resource.
  /// Possible values are: `FOREST`, `EXTERNAL`.
  final pulumi.Input<String> trustType;

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
      domain: pulumi.Input.asInput<String>(map['domain']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      selectiveAuthentication:
          pulumi.Input.asOptionalInput<bool>(map['selectiveAuthentication']),
      targetDnsIpAddresses:
          pulumi.Input.asInput<List<String>>(map['targetDnsIpAddresses']),
      targetDomainName: pulumi.Input.asInput<String>(map['targetDomainName']),
      trustDirection: pulumi.Input.asInput<String>(map['trustDirection']),
      trustHandshakeSecret:
          pulumi.Input.asInput<String>(map['trustHandshakeSecret']),
      trustType: pulumi.Input.asInput<String>(map['trustType']),
    );
  }
}
