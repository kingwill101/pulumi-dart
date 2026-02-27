// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for CertificateMapEntry.
class CertificateMapEntryArgs {
  /// A set of Certificates defines for the given hostname.
  /// There can be defined up to fifteen certificates in each Certificate Map Entry.
  /// Each certificate must match pattern projects/*/locations/*/certificates/*.
  final pulumi.Input<List<String>> certificates;

  /// A human-readable description of the resource.
  final pulumi.Input<String>? description;

  /// A Hostname (FQDN, e.g. example.com) or a wildcard hostname expression (*.example.com)
  /// for a set of hostnames with common suffix. Used as Server Name Indication (SNI) for
  /// selecting a proper certificate.
  final pulumi.Input<String>? hostname;

  /// Set of labels associated with a Certificate Map Entry.
  /// An object containing a list of "key": value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// A map entry that is inputted into the certificate map
  final pulumi.Input<String> map;

  /// A predefined matcher for particular cases, other than SNI selection
  final pulumi.Input<String>? matcher;

  /// A user-defined name of the Certificate Map Entry. Certificate Map Entry
  /// names must be unique globally and match pattern
  /// 'projects/*/locations/*/certificateMaps/*/certificateMapEntries/*'
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  CertificateMapEntryArgs({
    required this.certificates,
    this.description,
    this.hostname,
    this.labels,
    required this.map,
    this.matcher,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificates'] = certificates;
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
    map['map'] = map;
    final matcherValue = matcher;
    if (matcherValue != null) {
      map['matcher'] = matcherValue;
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
      certificates: pulumi.Input.asInput<List<String>>(map['certificates']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      hostname: pulumi.Input.asOptionalInput<String>(map['hostname']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      map: pulumi.Input.asInput<String>(map['map']),
      matcher: pulumi.Input.asOptionalInput<String>(map['matcher']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
