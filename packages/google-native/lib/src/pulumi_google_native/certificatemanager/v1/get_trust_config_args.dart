// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTrustConfig.
class GetTrustConfigArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> trustConfigId;

  GetTrustConfigArgs({
    required this.location,
    this.project,
    required this.trustConfigId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['trustConfigId'] = trustConfigId;
    return map;
  }

  factory GetTrustConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetTrustConfigArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      trustConfigId: pulumi.Input.asInput<String>(map['trustConfigId']),
    );
  }
}
