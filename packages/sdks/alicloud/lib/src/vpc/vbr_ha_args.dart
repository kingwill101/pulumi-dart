// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_vbr_ha_vbr_ha_args_doc}
/// The set of arguments for VbrHa.
/// {@endtemplate}
/// {@macro pulumi_vpc_vbr_ha_vbr_ha_args_doc}
class VbrHaArgs {
  /// The description of the VBR switching group.
  /// It must be 2 to 256 characters in length and must start with a letter or Chinese, but cannot start with 'http:// 'or 'https.
  final pulumi.Input<String>? description;
  /// Whether to PreCheck only this request. Value range:
  /// - *true**: The check request is sent and the instance is not started. Check whether the required parameters, request format, and instance status are filled in. If the check does not pass, the corresponding error is returned. If the check passes, DRYRUN.SUCCESS is returned.
  /// - *false** (default): Send a normal request and start the instance directly after passing the check.
  final pulumi.Input<bool>? dryRun;
  /// The instance ID of another VBR in The VBR switching group.
  final pulumi.Input<String> peerVbrId;
  /// VBR switch group name.
  final pulumi.Input<String>? vbrHaName;
  /// The VBR instance ID.
  final pulumi.Input<String> vbrId;

  /// Creates a new [VbrHaArgs].
  /// [description] The description of the VBR switching group.
  /// [dryRun] Whether to PreCheck only this request. Value range:
  /// [peerVbrId] The instance ID of another VBR in The VBR switching group.
  /// [vbrHaName] VBR switch group name.
  /// [vbrId] The VBR instance ID.
  VbrHaArgs({
    this.description,
    this.dryRun,
    required this.peerVbrId,
    this.vbrHaName,
    required this.vbrId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'dryRun': ?dryRun,
      'peerVbrId': peerVbrId,
      'vbrHaName': ?vbrHaName,
      'vbrId': vbrId,
    };
  }

  factory VbrHaArgs.fromMap(Map<String, dynamic> map) {
    return VbrHaArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      peerVbrId: pulumi.Input.fromValue(map['peerVbrId'] as String),
      vbrHaName: (() { final guardedValue = map['vbrHaName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vbrId: pulumi.Input.fromValue(map['vbrId'] as String),
    );
  }
}

