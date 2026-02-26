// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'certificate_map_entry_matcher.dart';

/// The set of arguments for CertificateMapEntry.
class CertificateMapEntryArgs {
  /// Required. A user-provided name of the certificate map entry.
  final Input<String> certificateMapEntryId;
  final Input<String> certificateMapId;

  /// A set of Certificates defines for the given `hostname`. There can be defined up to four certificates in each Certificate Map Entry. Each certificate must match pattern `projects/*/locations/*/certificates/*`.
  final Input<List<String>>? certificates;

  /// One or more paragraphs of text description of a certificate map entry.
  final Input<String>? description;

  /// A Hostname (FQDN, e.g. `example.com`) or a wildcard hostname expression (`*.example.com`) for a set of hostnames with common suffix. Used as Server Name Indication (SNI) for selecting a proper certificate.
  final Input<String>? hostname;

  /// Set of labels associated with a Certificate Map Entry.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// A predefined matcher for particular cases, other than SNI selection.
  final Input<CertificateMapEntryMatcher>? matcher;

  /// A user-defined name of the Certificate Map Entry. Certificate Map Entry names must be unique globally and match pattern `projects/*/locations/*/certificateMaps/*/certificateMapEntries/*`.
  final Input<String>? name;
  final Input<String>? project;

  CertificateMapEntryArgs({
    required this.certificateMapEntryId,
    required this.certificateMapId,
    this.certificates,
    this.description,
    this.hostname,
    this.labels,
    this.location,
    this.matcher,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateMapEntryId'] = certificateMapEntryId;
    map['certificateMapId'] = certificateMapId;
    final certificatesValue = certificates;
    if (certificatesValue != null) {
      map['certificates'] = certificatesValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final hostnameValue = hostname;
    if (hostnameValue != null) {
      map['hostname'] = hostnameValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final matcherValue = matcher;
    if (matcherValue != null) {
      map['matcher'] =
          Input.mapOptionalInputValue<CertificateMapEntryMatcher, String>(
              matcherValue, (value) => value.value);
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

  factory CertificateMapEntryArgs.fromMap(Map<String, dynamic> map) {
    return CertificateMapEntryArgs(
      certificateMapEntryId:
          Input.asInput<String>(map['certificateMapEntryId']),
      certificateMapId: Input.asInput<String>(map['certificateMapId']),
      certificates: Input.asOptionalInput<List<String>>(map['certificates']),
      description: Input.asOptionalInput<String>(map['description']),
      hostname: Input.asOptionalInput<String>(map['hostname']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      matcher:
          Input.asOptionalInput<CertificateMapEntryMatcher>(map['matcher']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
