// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for DnsAuthorization.
class DnsAuthorizationArgs {
  /// One or more paragraphs of text description of a DnsAuthorization.
  final Input<String>? description;

  /// Required. A user-provided name of the dns authorization.
  final Input<String> dnsAuthorizationId;

  /// Immutable. A domain that is being authorized. A DnsAuthorization resource covers a single domain and its wildcard, e.g. authorization for `example.com` can be used to issue certificates for `example.com` and `*.example.com`.
  final Input<String> domain;

  /// Set of labels associated with a DnsAuthorization.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// A user-defined name of the dns authorization. DnsAuthorization names must be unique globally and match pattern `projects/*/locations/*/dnsAuthorizations/*`.
  final Input<String>? name;
  final Input<String>? project;

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
      description: Input.asOptionalInput<String>(map['description']),
      dnsAuthorizationId: Input.asInput<String>(map['dnsAuthorizationId']),
      domain: Input.asInput<String>(map['domain']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
