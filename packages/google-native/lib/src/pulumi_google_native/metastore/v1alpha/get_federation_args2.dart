// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getFederation.
class GetFederationArgs2 {
  final Input<String> federationId;
  final Input<String> location;
  final Input<String>? project;

  GetFederationArgs2({
    required this.federationId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['federationId'] = federationId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetFederationArgs2.fromMap(Map<String, dynamic> map) {
    return GetFederationArgs2(
      federationId: Input.asInput<String>(map['federationId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
