// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getVersion.
class GetVersionFirebasehostingV1beta1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> siteId;
  final pulumi.Input<String> versionId;

  GetVersionFirebasehostingV1beta1Args({
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

  factory GetVersionFirebasehostingV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetVersionFirebasehostingV1beta1Args(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      siteId: pulumi.Input.asInput<String>(map['siteId']),
      versionId: pulumi.Input.asInput<String>(map['versionId']),
    );
  }
}
