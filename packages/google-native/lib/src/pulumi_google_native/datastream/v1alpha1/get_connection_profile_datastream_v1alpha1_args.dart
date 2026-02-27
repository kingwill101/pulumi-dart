// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getConnectionProfile.
class GetConnectionProfileDatastreamV1alpha1Args {
  final pulumi.Input<String> connectionProfileId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetConnectionProfileDatastreamV1alpha1Args({
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

  factory GetConnectionProfileDatastreamV1alpha1Args.fromMap(
      Map<String, dynamic> map) {
    return GetConnectionProfileDatastreamV1alpha1Args(
      connectionProfileId:
          pulumi.Input.asInput<String>(map['connectionProfileId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
