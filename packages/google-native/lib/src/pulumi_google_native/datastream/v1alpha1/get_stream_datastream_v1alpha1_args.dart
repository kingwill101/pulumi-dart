// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getStream.
class GetStreamDatastreamV1alpha1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> streamId;

  GetStreamDatastreamV1alpha1Args({
    required this.location,
    this.project,
    required this.streamId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['streamId'] = streamId;
    return map;
  }

  factory GetStreamDatastreamV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return GetStreamDatastreamV1alpha1Args(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      streamId: pulumi.Input.asInput<String>(map['streamId']),
    );
  }
}
