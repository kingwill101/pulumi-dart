// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Domain.
class DomainManagedidentitiesV1alpha1Args {
  /// Optional. Configuration for audit logs. True if audit logs are enabled, else false. Default is audit logs disabled.
  final pulumi.Input<bool>? auditLogsEnabled;

  /// Optional. The full names of the Google Compute Engine [networks](/compute/docs/networks-and-firewalls#networks) to which the instance is connected. Network can be added using UpdateDomain later. Domain is only available on network part of authorized_networks. Caller needs to make sure that CIDR subnets do not overlap between networks, else domain creation will fail.
  final pulumi.Input<List<String>>? authorizedNetworks;

  /// The fully qualified domain name. e.g. mydomain.myorganization.com, with the following restrictions: * Must contain only lowercase letters, numbers, periods and hyphens. * Must start with a letter. * Must contain between 2-64 characters. * Must end with a number or a letter. * Must not start with period. * Must be unique within the project. * First segment length (mydomain form example above) shouldn't exceed 15 chars. * The last segment cannot be fully numeric.
  final pulumi.Input<String>? domainName;

  /// Optional. Resource labels to represent user provided metadata
  final pulumi.Input<Map<String, String>>? labels;

  /// Locations where domain needs to be provisioned. regions e.g. us-west1 or us-east4 Service supports up to 4 locations at once. Each location will use a /26 block.
  final pulumi.Input<List<String>> locations;

  /// Optional. Name of customer-visible admin used to perform Active Directory operations. If not specified `setupadmin` would be used.
  final pulumi.Input<String>? managedIdentitiesAdminName;
  final pulumi.Input<String>? project;

  /// The CIDR range of internal addresses that are reserved for this domain. Reserved networks must be /24 or larger. Ranges must be unique and non-overlapping with existing subnets in [Domain].[authorized_networks].
  final pulumi.Input<String> reservedIpRange;

  DomainManagedidentitiesV1alpha1Args({
    this.auditLogsEnabled,
    this.authorizedNetworks,
    this.domainName,
    this.labels,
    required this.locations,
    this.managedIdentitiesAdminName,
    this.project,
    required this.reservedIpRange,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final auditLogsEnabledValue = auditLogsEnabled;
    if (auditLogsEnabledValue != null) {
      map['auditLogsEnabled'] = auditLogsEnabledValue;
    }
    final authorizedNetworksValue = authorizedNetworks;
    if (authorizedNetworksValue != null) {
      map['authorizedNetworks'] = authorizedNetworksValue;
    }
    final domainNameValue = domainName;
    if (domainNameValue != null) {
      map['domainName'] = domainNameValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['locations'] = locations;
    final managedIdentitiesAdminNameValue = managedIdentitiesAdminName;
    if (managedIdentitiesAdminNameValue != null) {
      map['managedIdentitiesAdminName'] = managedIdentitiesAdminNameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['reservedIpRange'] = reservedIpRange;
    return map;
  }

  factory DomainManagedidentitiesV1alpha1Args.fromMap(
      Map<String, dynamic> map) {
    return DomainManagedidentitiesV1alpha1Args(
      auditLogsEnabled:
          pulumi.Input.asOptionalInput<bool>(map['auditLogsEnabled']),
      authorizedNetworks:
          pulumi.Input.asOptionalInput<List<String>>(map['authorizedNetworks']),
      domainName: pulumi.Input.asOptionalInput<String>(map['domainName']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      locations: pulumi.Input.asInput<List<String>>(map['locations']),
      managedIdentitiesAdminName: pulumi.Input.asOptionalInput<String>(
          map['managedIdentitiesAdminName']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      reservedIpRange: pulumi.Input.asInput<String>(map['reservedIpRange']),
    );
  }
}
