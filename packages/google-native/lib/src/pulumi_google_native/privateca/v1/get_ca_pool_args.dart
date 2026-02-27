// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getCaPool.
class GetCaPoolArgs {
  final Input<String> caPoolId;
  final Input<String> location;
  final Input<String>? project;

  GetCaPoolArgs({
    required this.caPoolId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['caPoolId'] = caPoolId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetCaPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetCaPoolArgs(
      caPoolId: Input.asInput<String>(map['caPoolId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
