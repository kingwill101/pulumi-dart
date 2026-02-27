// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for DnsAuthorization.
class DnsAuthorizationArgs {
  /// One or more paragraphs of text description of a DnsAuthorization.
  final pulumi.Input<String>? description;

  /// Required. A user-provided name of the dns authorization.
  final pulumi.Input<String> dnsAuthorizationId;

  /// Immutable. A domain that is being authorized. A DnsAuthorization resource covers a single domain and its wildcard, e.g. authorization for `example.com` can be used to issue certificates for `example.com` and `*.example.com`.
  final pulumi.Input<String> domain;

  /// Set of labels associated with a DnsAuthorization.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// A user-defined name of the dns authorization. DnsAuthorization names must be unique globally and match pattern `projects/*/locations/*/dnsAuthorizations/*`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  DnsAuthorizationArgs({
    this.description,
    required this.dnsAuthorizationId,
    required this.domain,
    this.labels,
    this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['dnsAuthorizationId'] = dnsAuthorizationId;
    map['domain'] = domain;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory DnsAuthorizationArgs.fromMap(Map<String, dynamic> map) {
    return DnsAuthorizationArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      dnsAuthorizationId:
          pulumi.Input.asInput<String>(map['dnsAuthorizationId']),
      domain: pulumi.Input.asInput<String>(map['domain']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
