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
    required this.expressSyncId,
    required this.gatewayId,
    required this.shareName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressSyncId': expressSyncId,
      'gatewayId': gatewayId,
      'shareName': shareName,
    };
  }

  factory ExpressSyncShareAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return ExpressSyncShareAttachmentArgs(
      expressSyncId: (map['expressSyncId'] as String).input(),
      gatewayId: (map['gatewayId'] as String).input(),
      shareName: (map['shareName'] as String).input(),
    );
  }
}

