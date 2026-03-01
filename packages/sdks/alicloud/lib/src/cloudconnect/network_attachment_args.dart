// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudconnect_network_attachment_network_attachment_args_doc}
/// The set of arguments for NetworkAttachment.
/// {@endtemplate}
/// {@macro pulumi_cloudconnect_network_attachment_network_attachment_args_doc}
class NetworkAttachmentArgs {
  /// The ID of the CCN instance.
  final pulumi.Input<String> ccnId;
  /// The ID of the Smart Access Gateway instance.
  final pulumi.Input<String> sagId;

  /// Creates a new [NetworkAttachmentArgs].
  /// [ccnId] The ID of the CCN instance.
  /// [sagId] The ID of the Smart Access Gateway instance.
  NetworkAttachmentArgs({
    required pulumi.Output<String> ccnId,
    required pulumi.Output<String> sagId,
  }) :
      ccnId = pulumi.Input.asInput<String>(ccnId),
      sagId = pulumi.Input.asInput<String>(sagId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ccnId': ccnId,
      'sagId': sagId,
    };
  }

  factory NetworkAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return NetworkAttachmentArgs(
      ccnId: pulumi.Output.create<String>(map['ccnId'] as String),
      sagId: pulumi.Output.create<String>(map['sagId'] as String),
    );
  }
}

