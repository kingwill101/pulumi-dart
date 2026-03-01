// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudstoragegateway_express_sync_share_attachment_express_sync_share_attachment_args_doc}
/// The set of arguments for ExpressSyncShareAttachment.
/// {@endtemplate}
/// {@macro pulumi_cloudstoragegateway_express_sync_share_attachment_express_sync_share_attachment_args_doc}
class ExpressSyncShareAttachmentArgs {
  /// The ID of the ExpressSync.
  final pulumi.Input<String> expressSyncId;
  /// The ID of the Gateway.
  final pulumi.Input<String> gatewayId;
  /// The name of the GatewayFileShare. **NOTE:** When GatewayFileShare is associated with a speed sync group, its reverse synchronization function will be turned off by default.
  final pulumi.Input<String> shareName;

  /// Creates a new [ExpressSyncShareAttachmentArgs].
  /// [expressSyncId] The ID of the ExpressSync.
  /// [gatewayId] The ID of the Gateway.
  /// [shareName] The name of the GatewayFileShare. **NOTE:** When GatewayFileShare is associated with a speed sync group, its reverse synchronization function will be turned off by default.
  ExpressSyncShareAttachmentArgs({
    required pulumi.Output<String> expressSyncId,
    required pulumi.Output<String> gatewayId,
    required pulumi.Output<String> shareName,
  }) :
      expressSyncId = pulumi.Input.asInput<String>(expressSyncId),
      gatewayId = pulumi.Input.asInput<String>(gatewayId),
      shareName = pulumi.Input.asInput<String>(shareName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressSyncId': expressSyncId,
      'gatewayId': gatewayId,
      'shareName': shareName,
    };
  }

  factory ExpressSyncShareAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return ExpressSyncShareAttachmentArgs(
      expressSyncId: pulumi.Output.create<String>(map['expressSyncId'] as String),
      gatewayId: pulumi.Output.create<String>(map['gatewayId'] as String),
      shareName: pulumi.Output.create<String>(map['shareName'] as String),
    );
  }
}

