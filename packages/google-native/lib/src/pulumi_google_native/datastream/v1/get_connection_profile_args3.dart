// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getConnectionProfile.
class GetConnectionProfileArgs3 {
  final Input<String> connectionProfileId;
  final Input<String> location;
  final Input<String>? project;

  GetConnectionProfileArgs3({
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

  factory GetConnectionProfileArgs3.fromMap(Map<String, dynamic> map) {
    return GetConnectionProfileArgs3(
      connectionProfileId: Input.asInput<String>(map['connectionProfileId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
