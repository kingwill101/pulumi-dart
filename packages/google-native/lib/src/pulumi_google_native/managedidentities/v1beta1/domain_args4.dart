// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Domain.
class DomainArgs4 {
  /// Optional. The name of delegated administrator account used to perform Active Directory operations. If not specified, `setupadmin` will be used.
  final Input<String>? admin;

  /// Optional. Configuration for audit logs. True if audit logs are enabled, else false. Default is audit logs disabled.
  final Input<bool>? auditLogsEnabled;

  /// Optional. The full names of the Google Compute Engine [networks](/compute/docs/networks-and-firewalls#networks) the domain instance is connected to. Networks can be added using UpdateDomain. The domain is only available on networks listed in `authorized_networks`. If CIDR subnets overlap between networks, domain creation will fail.
  final Input<List<String>>? authorizedNetworks;

  /// Required. A domain name, e.g. mydomain.myorg.com, with the following restrictions: * Must contain only lowercase letters, numbers, periods and hyphens. * Must start with a letter. * Must contain between 2-64 characters. * Must end with a number or a letter. * Must not start with period. * First segment length (mydomain form example above) shouldn't exceed 15 chars. * The last segment cannot be fully numeric. * Must be unique within the customer project.
  final Input<String> domainName;

  /// Optional. Resource labels that can contain user-provided metadata.
  final Input<Map<String, String>>? labels;

  /// Locations where domain needs to be provisioned. regions e.g. us-west1 or us-east4 Service supports up to 4 locations at once. Each location will use a /26 block.
  final Input<List<String>> locations;
  final Input<String>? project;

  /// The CIDR range of internal addresses that are reserved for this domain. Reserved networks must be /24 or larger. Ranges must be unique and non-overlapping with existing subnets in [Domain].[authorized_networks].
  final Input<String> reservedIpRange;

  DomainArgs4({
    this.admin,
    this.auditLogsEnabled,
    this.authorizedNetworks,
    required this.domainName,
    this.labels,
    required this.locations,
    this.project,
    required this.reservedIpRange,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final adminValue = admin;
    if (adminValue != null) {
      map['admin'] = adminValue;
    }
    final auditLogsEnabledValue = auditLogsEnabled;
    if (auditLogsEnabledValue != null) {
      map['auditLogsEnabled'] = auditLogsEnabledValue;
    }
    final authorizedNetworksValue = authorizedNetworks;
    if (authorizedNetworksValue != null) {
      map['authorizedNetworks'] = authorizedNetworksValue;
    }
    map['domainName'] = domainName;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['locations'] = locations;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['reservedIpRange'] = reservedIpRange;
    return map;
  }

  factory DomainArgs4.fromMap(Map<String, dynamic> map) {
    return DomainArgs4(
      admin: Input.asOptionalInput<String>(map['admin']),
      auditLogsEnabled: Input.asOptionalInput<bool>(map['auditLogsEnabled']),
      authorizedNetworks:
          Input.asOptionalInput<List<String>>(map['authorizedNetworks']),
      domainName: Input.asInput<String>(map['domainName']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      locations: Input.asInput<List<String>>(map['locations']),
      project: Input.asOptionalInput<String>(map['project']),
      reservedIpRange: Input.asInput<String>(map['reservedIpRange']),
    );
  }
}
