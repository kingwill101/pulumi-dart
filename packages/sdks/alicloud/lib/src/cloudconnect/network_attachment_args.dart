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
    required this.ccnId,
    required this.sagId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ccnId': ccnId,
      'sagId': sagId,
    };
  }

  factory NetworkAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return NetworkAttachmentArgs(
      ccnId: pulumi.Input.fromValue(map['ccnId'] as String),
      sagId: pulumi.Input.fromValue(map['sagId'] as String),
    );
  }
}

