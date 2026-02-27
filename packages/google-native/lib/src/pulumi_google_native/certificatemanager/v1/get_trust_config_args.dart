// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getTrustConfig.
class GetTrustConfigArgs {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> trustConfigId;

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
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      trustConfigId: Input.asInput<String>(map['trustConfigId']),
    );
  }
}
