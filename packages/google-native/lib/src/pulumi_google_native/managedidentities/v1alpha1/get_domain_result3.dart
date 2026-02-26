// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'trust_response2.dart';

/// Result data returned by getDomain.
class GetDomainResult3 {
  /// Optional. Configuration for audit logs. True if audit logs are enabled, else false. Default is audit logs disabled.
  final bool auditLogsEnabled;

  /// Optional. The full names of the Google Compute Engine [networks](/compute/docs/networks-and-firewalls#networks) to which the instance is connected. Network can be added using UpdateDomain later. Domain is only available on network part of authorized_networks. Caller needs to make sure that CIDR subnets do not overlap between networks, else domain creation will fail.
  final List<String> authorizedNetworks;

  /// The time the instance was created. Synthetic field is populated automatically by CCFE. go/ccfe-synthetic-field-user-guide
  final String createTime;

  /// Fully-qualified domain name of the exposed domain used by clients to connect to the service. Similar to what would be chosen for an Active Directory that is set up on an internal network.
  final String fqdn;

  /// Optional. Resource labels to represent user provided metadata
  final Map<String, String> labels;

  /// Locations where domain needs to be provisioned. regions e.g. us-west1 or us-east4 Service supports up to 4 locations at once. Each location will use a /26 block.
  final List<String> locations;

  /// Optional. Name of customer-visible admin used to perform Active Directory operations. If not specified `setupadmin` would be used.
  final String managedIdentitiesAdminName;

  /// Unique name of the domain in this scope including projects and location using the form: `projects/{project_id}/locations/global/domains/{domain_name}`.
  final String name;

  /// The CIDR range of internal addresses that are reserved for this domain. Reserved networks must be /24 or larger. Ranges must be unique and non-overlapping with existing subnets in [Domain].[authorized_networks].
  final String reservedIpRange;

  /// The current state of this domain.
  final String state;

  /// Additional information about the current status of this domain, if available.
  final String statusMessage;

  /// The current trusts associated with the domain.
  final List<TrustResponse2> trusts;

  /// Last update time. Synthetic field is populated automatically by CCFE.
  final String updateTime;

  GetDomainResult3({
    required this.auditLogsEnabled,
    required this.authorizedNetworks,
    required this.createTime,
    required this.fqdn,
    required this.labels,
    required this.locations,
    required this.managedIdentitiesAdminName,
    required this.name,
    required this.reservedIpRange,
    required this.state,
    required this.statusMessage,
    required this.trusts,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['auditLogsEnabled'] = auditLogsEnabled;
    map['authorizedNetworks'] = authorizedNetworks;
    map['createTime'] = createTime;
    map['fqdn'] = fqdn;
    map['labels'] = labels;
    map['locations'] = locations;
    map['managedIdentitiesAdminName'] = managedIdentitiesAdminName;
    map['name'] = name;
    map['reservedIpRange'] = reservedIpRange;
    map['state'] = state;
    map['statusMessage'] = statusMessage;
    map['trusts'] = Input.encodeList<TrustResponse2, Map<String, dynamic>>(
        trusts, (value) => value.toMap());
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetDomainResult3.fromMap(Map<String, dynamic> map) {
    return GetDomainResult3(
      auditLogsEnabled: map['auditLogsEnabled'] as bool,
      authorizedNetworks: (map['authorizedNetworks'] as List).cast<String>(),
      createTime: map['createTime'] as String,
      fqdn: map['fqdn'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      locations: (map['locations'] as List).cast<String>(),
      managedIdentitiesAdminName: map['managedIdentitiesAdminName'] as String,
      name: map['name'] as String,
      reservedIpRange: map['reservedIpRange'] as String,
      state: map['state'] as String,
      statusMessage: map['statusMessage'] as String,
      trusts: Input.decodeList<TrustResponse2>(
          map['trusts'],
          (value) =>
              TrustResponse2.fromMap((value as Map).cast<String, dynamic>())),
      updateTime: map['updateTime'] as String,
    );
  }
}
