// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getNetworkAttachment.
class GetNetworkAttachmentComputeBetaArgs {
  final pulumi.Input<String> networkAttachment;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  GetNetworkAttachmentComputeBetaArgs({
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

  factory GetNetworkAttachmentComputeBetaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetNetworkAttachmentComputeBetaArgs(
      networkAttachment: pulumi.Input.asInput<String>(map['networkAttachment']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
    );
  }
}
