// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCertificateMapEntry.
class GetCertificateMapEntryArgs {
  final pulumi.Input<String> certificateMapEntryId;
  final pulumi.Input<String> certificateMapId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

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
          pulumi.Input.asInput<String>(map['certificateMapEntryId']),
      certificateMapId: pulumi.Input.asInput<String>(map['certificateMapId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
