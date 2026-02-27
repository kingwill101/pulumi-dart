// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getCertificateMapEntry.
class GetCertificateMapEntryArgs {
  final Input<String> certificateMapEntryId;
  final Input<String> certificateMapId;
  final Input<String> location;
  final Input<String>? project;

  GetCertificateMapEntryArgs({
    required this.certificateMapEntryId,
    required this.certificateMapId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateMapEntryId'] = certificateMapEntryId;
    map['certificateMapId'] = certificateMapId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetCertificateMapEntryArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateMapEntryArgs(
      certificateMapEntryId:
          Input.asInput<String>(map['certificateMapEntryId']),
      certificateMapId: Input.asInput<String>(map['certificateMapId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
