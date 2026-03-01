// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VbrHa resources.
class VbrHaState {
  /// The creation time of the VBR.
  final pulumi.Input<String>? createTime;
  /// The description of the VBR switching group.
  /// It must be 2 to 256 characters in length and must start with a letter or Chinese, but cannot start with 'http:// 'or 'https.
  final pulumi.Input<String>? description;
  /// Whether to PreCheck only this request. Value range:
  /// - *true**: The check request is sent and the instance is not started. Check whether the required parameters, request format, and instance status are filled in. If the check does not pass, the corresponding error is returned. If the check passes, DRYRUN.SUCCESS is returned.
  /// - *false** (default): Send a normal request and start the instance directly after passing the check.
  final pulumi.Input<bool>? dryRun;
  /// The instance ID of another VBR in The VBR switching group.
  final pulumi.Input<String>? peerVbrId;
  /// The ID of the region to which the VBR belongs.
  final pulumi.Input<String>? regionId;
  /// Status of VBR switching Group
  final pulumi.Input<String>? status;
  /// VBR switch group name.
  final pulumi.Input<String>? vbrHaName;
  /// The VBR instance ID.
  final pulumi.Input<String>? vbrId;

  /// Creates a new [VbrHaState].
  /// [createTime] The creation time of the VBR.
  /// [description] The description of the VBR switching group.
  /// [dryRun] Whether to PreCheck only this request. Value range:
  /// [peerVbrId] The instance ID of another VBR in The VBR switching group.
  /// [regionId] The ID of the region to which the VBR belongs.
  /// [status] Status of VBR switching Group
  /// [vbrHaName] VBR switch group name.
  /// [vbrId] The VBR instance ID.
  VbrHaState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? dryRun,
    pulumi.Output<String>? peerVbrId,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? vbrHaName,
    pulumi.Output<String>? vbrId,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      peerVbrId = pulumi.Input.asOptionalInput<String>(peerVbrId),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      status = pulumi.Input.asOptionalInput<String>(status),
      vbrHaName = pulumi.Input.asOptionalInput<String>(vbrHaName),
      vbrId = pulumi.Input.asOptionalInput<String>(vbrId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'dryRun': ?dryRun,
      'peerVbrId': ?peerVbrId,
      'regionId': ?regionId,
      'status': ?status,
      'vbrHaName': ?vbrHaName,
      'vbrId': ?vbrId,
    };
  }

  factory VbrHaState.fromMap(Map<String, dynamic> map) {
    return VbrHaState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      peerVbrId: map['peerVbrId'] == null ? null : pulumi.Output.create<String>(map['peerVbrId'] as String),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      vbrHaName: map['vbrHaName'] == null ? null : pulumi.Output.create<String>(map['vbrHaName'] as String),
      vbrId: map['vbrId'] == null ? null : pulumi.Output.create<String>(map['vbrId'] as String),
    );
  }
}

