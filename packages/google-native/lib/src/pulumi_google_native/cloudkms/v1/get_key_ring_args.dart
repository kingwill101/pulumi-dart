// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getKeyRing.
class GetKeyRingArgs {
  final Input<String> keyRingId;
  final Input<String> location;
  final Input<String>? project;

  GetKeyRingArgs({
    required this.keyRingId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['keyRingId'] = keyRingId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetKeyRingArgs.fromMap(Map<String, dynamic> map) {
    return GetKeyRingArgs(
      keyRingId: Input.asInput<String>(map['keyRingId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
