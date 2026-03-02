// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ExpressSyncShareAttachment resources.
class ExpressSyncShareAttachmentState {
  /// The ID of the ExpressSync.
  final pulumi.Input<String>? expressSyncId;
  /// The ID of the Gateway.
  final pulumi.Input<String>? gatewayId;
  /// The name of the GatewayFileShare. **NOTE:** When GatewayFileShare is associated with a speed sync group, its reverse synchronization function will be turned off by default.
  final pulumi.Input<String>? shareName;

  /// Creates a new [ExpressSyncShareAttachmentState].
  /// [expressSyncId] The ID of the ExpressSync.
  /// [gatewayId] The ID of the Gateway.
  /// [shareName] The name of the GatewayFileShare. **NOTE:** When GatewayFileShare is associated with a speed sync group, its reverse synchronization function will be turned off by default.
  ExpressSyncShareAttachmentState({
    this.expressSyncId,
    this.gatewayId,
    this.shareName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressSyncId': ?expressSyncId,
      'gatewayId': ?gatewayId,
      'shareName': ?shareName,
    };
  }

  factory ExpressSyncShareAttachmentState.fromMap(Map<String, dynamic> map) {
    return ExpressSyncShareAttachmentState(
      expressSyncId: map['expressSyncId'] == null ? null : (map['expressSyncId']! as String).input(),
      gatewayId: map['gatewayId'] == null ? null : (map['gatewayId']! as String).input(),
      shareName: map['shareName'] == null ? null : (map['shareName']! as String).input(),
    );
  }
}

