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
    this.createTime,
    this.description,
    this.dryRun,
    this.peerVbrId,
    this.regionId,
    this.status,
    this.vbrHaName,
    this.vbrId,
  });

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
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      dryRun: map['dryRun'] == null ? null : (map['dryRun']! as bool).input(),
      peerVbrId: map['peerVbrId'] == null ? null : (map['peerVbrId']! as String).input(),
      regionId: map['regionId'] == null ? null : (map['regionId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      vbrHaName: map['vbrHaName'] == null ? null : (map['vbrHaName']! as String).input(),
      vbrId: map['vbrId'] == null ? null : (map['vbrId']! as String).input(),
    );
  }
}

