// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getNetworkAttachment.
class GetNetworkAttachmentComputeV1Args {
  final pulumi.Input<String> networkAttachment;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  GetNetworkAttachmentComputeV1Args({
    required this.networkAttachment,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['networkAttachment'] = networkAttachment;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    return map;
  }

  factory GetNetworkAttachmentComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetNetworkAttachmentComputeV1Args(
      networkAttachment: pulumi.Input.asInput<String>(map['networkAttachment']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
    );
  }
}
