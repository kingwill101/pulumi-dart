// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_network_attachment_args_doc}
/// Arguments for getNetworkAttachment.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_network_attachment_args_doc}
class GetNetworkAttachmentArgs {
  final pulumi.Input<String> networkAttachment;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetNetworkAttachmentArgs].
  /// [networkAttachment] Required.
  /// [project] Optional.
  /// [region] Required.
  GetNetworkAttachmentArgs({
    required String networkAttachment,
    String? project,
    required String region,
  })  : networkAttachment = pulumi.Input.asInput<String>(networkAttachment),
        project = pulumi.Input.asOptionalInput<String>(project),
        region = pulumi.Input.asInput<String>(region);

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

  factory GetNetworkAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkAttachmentArgs(
      networkAttachment: map['networkAttachment'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
    );
  }
}
