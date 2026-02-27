// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Domain.
class DomainArgs {
  /// The name of delegated administrator account used to perform Active Directory operations.
  /// If not specified, setupadmin will be used.
  final pulumi.Input<String>? admin;

  /// The full names of the Google Compute Engine networks the domain instance is connected to. The domain is only available on networks listed in authorizedNetworks.
  /// If CIDR subnets overlap between networks, domain creation will fail.
  final pulumi.Input<List<String>>? authorizedNetworks;
  final pulumi.Input<bool>? deletionProtection;

  /// The fully qualified domain name. e.g. mydomain.myorganization.com, with the restrictions
  /// of https://cloud.google.com/managed-microsoft-ad/reference/rest/v1/projects.locations.global.domains.
  final pulumi.Input<String> domainName;

  /// Resource labels that can contain user-provided metadata
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Locations where domain needs to be provisioned. [regions][compute/docs/regions-zones/]
  /// e.g. us-west1 or us-east4 Service supports up to 4 locations at once. Each location will use a /26 block.
  final pulumi.Input<List<String>> locations;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The CIDR range of internal addresses that are reserved for this domain. Reserved networks must be /24 or larger.
  /// Ranges must be unique and non-overlapping with existing subnets in authorizedNetworks
  final pulumi.Input<String> reservedIpRange;

  DomainArgs({
    this.admin,
    this.authorizedNetworks,
    this.deletionProtection,
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
    final authorizedNetworksValue = authorizedNetworks;
    if (authorizedNetworksValue != null) {
      map['authorizedNetworks'] = authorizedNetworksValue;
    }
    final deletionProtectionValue = deletionProtection;
    if (deletionProtectionValue != null) {
      map['deletionProtection'] = deletionProtectionValue;
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

  factory DomainArgs.fromMap(Map<String, dynamic> map) {
    return DomainArgs(
      admin: pulumi.Input.asOptionalInput<String>(map['admin']),
      authorizedNetworks:
          pulumi.Input.asOptionalInput<List<String>>(map['authorizedNetworks']),
      deletionProtection:
          pulumi.Input.asOptionalInput<bool>(map['deletionProtection']),
      domainName: pulumi.Input.asInput<String>(map['domainName']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      locations: pulumi.Input.asInput<List<String>>(map['locations']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      reservedIpRange: pulumi.Input.asInput<String>(map['reservedIpRange']),
    );
  }
}
