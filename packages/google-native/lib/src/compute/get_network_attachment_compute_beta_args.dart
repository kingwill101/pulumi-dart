// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_network_attachment_compute_beta_args_doc}
/// Arguments for getNetworkAttachment.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_network_attachment_compute_beta_args_doc}
class GetNetworkAttachmentComputeBetaArgs {
  final pulumi.Input<String> networkAttachment;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetNetworkAttachmentComputeBetaArgs].
  /// [networkAttachment] Required.
  /// [project] Optional.
  /// [region] Required.
  GetNetworkAttachmentComputeBetaArgs({
    required String networkAttachment,
    String? project,
    required String region,
  }) :
      networkAttachment = pulumi.Input.asInput<String>(networkAttachment),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkAttachment': networkAttachment,
      'project': ?project,
      'region': region,
    };
  }

  factory GetNetworkAttachmentComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkAttachmentComputeBetaArgs(
      networkAttachment: map['networkAttachment'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
    );
  }
}

