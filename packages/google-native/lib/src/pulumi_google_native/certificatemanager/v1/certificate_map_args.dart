// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for CertificateMap.
class CertificateMapArgs {
  /// Required. A user-provided name of the certificate map.
  final Input<String> certificateMapId;

  /// One or more paragraphs of text description of a certificate map.
  final Input<String>? description;

  /// Set of labels associated with a Certificate Map.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// A user-defined name of the Certificate Map. Certificate Map names must be unique globally and match pattern `projects/*/locations/*/certificateMaps/*`.
  final Input<String>? name;
  final Input<String>? project;

  CertificateMapArgs({
    required this.certificateMapId,
    this.description,
    this.labels,
    this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateMapId'] = certificateMapId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
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

  factory CertificateMapArgs.fromMap(Map<String, dynamic> map) {
    return CertificateMapArgs(
      certificateMapId: Input.asInput<String>(map['certificateMapId']),
      description: Input.asOptionalInput<String>(map['description']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
