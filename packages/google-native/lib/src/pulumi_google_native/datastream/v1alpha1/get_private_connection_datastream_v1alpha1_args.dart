// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getPrivateConnection.
class GetPrivateConnectionDatastreamV1alpha1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> privateConnectionId;
  final pulumi.Input<String>? project;

  GetPrivateConnectionDatastreamV1alpha1Args({
    required this.location,
    required this.privateConnectionId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['privateConnectionId'] = privateConnectionId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetPrivateConnectionDatastreamV1alpha1Args.fromMap(
      Map<String, dynamic> map) {
    return GetPrivateConnectionDatastreamV1alpha1Args(
      location: pulumi.Input.asInput<String>(map['location']),
      privateConnectionId:
          pulumi.Input.asInput<String>(map['privateConnectionId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
