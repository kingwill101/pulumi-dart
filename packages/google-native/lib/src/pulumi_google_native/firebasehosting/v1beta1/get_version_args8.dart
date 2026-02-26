// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getVersion.
class GetVersionArgs8 {
  final Input<String>? project;
  final Input<String> siteId;
  final Input<String> versionId;

  GetVersionArgs8({
    this.project,
    required this.siteId,
    required this.versionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['siteId'] = siteId;
    map['versionId'] = versionId;
    return map;
  }

  factory GetVersionArgs8.fromMap(Map<String, dynamic> map) {
    return GetVersionArgs8(
      project: Input.asOptionalInput<String>(map['project']),
      siteId: Input.asInput<String>(map['siteId']),
      versionId: Input.asInput<String>(map['versionId']),
    );
  }
}
