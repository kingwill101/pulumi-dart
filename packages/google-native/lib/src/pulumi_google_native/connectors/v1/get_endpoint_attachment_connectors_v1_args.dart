// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getEndpointAttachment.
class GetEndpointAttachmentConnectorsV1Args {
  final pulumi.Input<String> endpointAttachmentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetEndpointAttachmentConnectorsV1Args({
    required this.endpointAttachmentId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endpointAttachmentId'] = endpointAttachmentId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetEndpointAttachmentConnectorsV1Args.fromMap(
      Map<String, dynamic> map) {
    return GetEndpointAttachmentConnectorsV1Args(
      endpointAttachmentId:
          pulumi.Input.asInput<String>(map['endpointAttachmentId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
