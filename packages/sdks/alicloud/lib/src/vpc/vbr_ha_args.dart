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
    pulumi.Output<String>? description,
    pulumi.Output<bool>? dryRun,
    required pulumi.Output<String> peerVbrId,
    pulumi.Output<String>? vbrHaName,
    required pulumi.Output<String> vbrId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      peerVbrId = pulumi.Input.asInput<String>(peerVbrId),
      vbrHaName = pulumi.Input.asOptionalInput<String>(vbrHaName),
      vbrId = pulumi.Input.asInput<String>(vbrId);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      peerVbrId: pulumi.Output.create<String>(map['peerVbrId'] as String),
      vbrHaName: map['vbrHaName'] == null ? null : pulumi.Output.create<String>(map['vbrHaName'] as String),
      vbrId: pulumi.Output.create<String>(map['vbrId'] as String),
    );
  }
}

