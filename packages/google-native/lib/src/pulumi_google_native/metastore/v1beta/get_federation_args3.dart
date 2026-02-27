// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getFederation.
class GetFederationArgs3 {
  final Input<String> federationId;
  final Input<String> location;
  final Input<String>? project;

  GetFederationArgs3({
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

  factory GetFederationArgs3.fromMap(Map<String, dynamic> map) {
    return GetFederationArgs3(
      federationId: Input.asInput<String>(map['federationId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
