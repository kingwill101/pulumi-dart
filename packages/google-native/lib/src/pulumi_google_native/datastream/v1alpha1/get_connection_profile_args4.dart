// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getConnectionProfile.
class GetConnectionProfileArgs4 {
  final Input<String> connectionProfileId;
  final Input<String> location;
  final Input<String>? project;

  GetConnectionProfileArgs4({
    required this.connectionProfileId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectionProfileId'] = connectionProfileId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetConnectionProfileArgs4.fromMap(Map<String, dynamic> map) {
    return GetConnectionProfileArgs4(
      connectionProfileId: Input.asInput<String>(map['connectionProfileId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
