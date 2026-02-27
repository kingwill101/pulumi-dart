// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for KeyRing.
class KeyRingArgs {
  /// Required. It must be unique within a location and match the regular expression `[a-zA-Z0-9_-]{1,63}`
  final pulumi.Input<String>? keyRingId;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  KeyRingArgs({
    this.keyRingId,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keyRingIdValue = keyRingId;
    if (keyRingIdValue != null) {
      map['keyRingId'] = keyRingIdValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory KeyRingArgs.fromMap(Map<String, dynamic> map) {
    return KeyRingArgs(
      keyRingId: pulumi.Input.asOptionalInput<String>(map['keyRingId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
