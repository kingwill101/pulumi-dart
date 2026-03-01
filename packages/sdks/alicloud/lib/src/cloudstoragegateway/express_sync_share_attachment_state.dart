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
    pulumi.Output<String>? expressSyncId,
    pulumi.Output<String>? gatewayId,
    pulumi.Output<String>? shareName,
  }) :
      expressSyncId = pulumi.Input.asOptionalInput<String>(expressSyncId),
      gatewayId = pulumi.Input.asOptionalInput<String>(gatewayId),
      shareName = pulumi.Input.asOptionalInput<String>(shareName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressSyncId': ?expressSyncId,
      'gatewayId': ?gatewayId,
      'shareName': ?shareName,
    };
  }

  factory ExpressSyncShareAttachmentState.fromMap(Map<String, dynamic> map) {
    return ExpressSyncShareAttachmentState(
      expressSyncId: map['expressSyncId'] == null ? null : pulumi.Output.create<String>(map['expressSyncId'] as String),
      gatewayId: map['gatewayId'] == null ? null : pulumi.Output.create<String>(map['gatewayId'] as String),
      shareName: map['shareName'] == null ? null : pulumi.Output.create<String>(map['shareName'] as String),
    );
  }
}

