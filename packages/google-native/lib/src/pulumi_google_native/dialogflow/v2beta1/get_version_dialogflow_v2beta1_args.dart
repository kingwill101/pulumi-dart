// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getVersion.
class GetVersionDialogflowV2beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> versionId;

  GetVersionDialogflowV2beta1Args({
    required this.location,
    this.project,
    required this.versionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['versionId'] = versionId;
    return map;
  }

  factory GetVersionDialogflowV2beta1Args.fromMap(Map<String, dynamic> map) {
    return GetVersionDialogflowV2beta1Args(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      versionId: pulumi.Input.asInput<String>(map['versionId']),
    );
  }
}
