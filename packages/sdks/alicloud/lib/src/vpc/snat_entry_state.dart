// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SnatEntry resources.
class SnatEntryState {
  /// Specifies whether to enable EIP affinity. Default value: `0`. Valid values:
  final pulumi.Input<int>? eipAffinity;
  /// The id of the snat entry on the server.
  final pulumi.Input<String>? snatEntryId;
  /// The name of the SNAT entry. The name must be `2` to `128` characters in length. It must start with a letter but cannot start with `http://` or `https://`.
  final pulumi.Input<String>? snatEntryName;
  /// The IP of a SNAT entry. Separate multiple EIP or NAT IP addresses with commas (,). **NOTE:** From version 1.241.0, `snat_ip` can be modified.
  final pulumi.Input<String>? snatIp;
  /// The ID of the SNAT table.
  final pulumi.Input<String>? snatTableId;
  /// The source CIDR block specified in the SNAT entry.
  final pulumi.Input<String>? sourceCidr;
  /// The ID of the vSwitch.
  final pulumi.Input<String>? sourceVswitchId;
  /// (Available since v1.119.1) The ID of the SNAT entry.
  final pulumi.Input<String>? status;

  /// Creates a new [SnatEntryState].
  /// [eipAffinity] Specifies whether to enable EIP affinity. Default value: `0`. Valid values:
  /// [snatEntryId] The id of the snat entry on the server.
  /// [snatEntryName] The name of the SNAT entry. The name must be `2` to `128` characters in length. It must start with a letter but cannot start with `http://` or `https://`.
  /// [snatIp] The IP of a SNAT entry. Separate multiple EIP or NAT IP addresses with commas (,). **NOTE:** From version 1.241.0, `snat_ip` can be modified.
  /// [snatTableId] The ID of the SNAT table.
  /// [sourceCidr] The source CIDR block specified in the SNAT entry.
  /// [sourceVswitchId] The ID of the vSwitch.
  /// [status] (Available since v1.119.1) The ID of the SNAT entry.
  SnatEntryState({
    pulumi.Output<int>? eipAffinity,
    pulumi.Output<String>? snatEntryId,
    pulumi.Output<String>? snatEntryName,
    pulumi.Output<String>? snatIp,
    pulumi.Output<String>? snatTableId,
    pulumi.Output<String>? sourceCidr,
    pulumi.Output<String>? sourceVswitchId,
    pulumi.Output<String>? status,
  }) :
      eipAffinity = pulumi.Input.asOptionalInput<int>(eipAffinity),
      snatEntryId = pulumi.Input.asOptionalInput<String>(snatEntryId),
      snatEntryName = pulumi.Input.asOptionalInput<String>(snatEntryName),
      snatIp = pulumi.Input.asOptionalInput<String>(snatIp),
      snatTableId = pulumi.Input.asOptionalInput<String>(snatTableId),
      sourceCidr = pulumi.Input.asOptionalInput<String>(sourceCidr),
      sourceVswitchId = pulumi.Input.asOptionalInput<String>(sourceVswitchId),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eipAffinity': ?eipAffinity,
      'snatEntryId': ?snatEntryId,
      'snatEntryName': ?snatEntryName,
      'snatIp': ?snatIp,
      'snatTableId': ?snatTableId,
      'sourceCidr': ?sourceCidr,
      'sourceVswitchId': ?sourceVswitchId,
      'status': ?status,
    };
  }

  factory SnatEntryState.fromMap(Map<String, dynamic> map) {
    return SnatEntryState(
      eipAffinity: map['eipAffinity'] == null ? null : pulumi.Output.create<int>(map['eipAffinity'] as int),
      snatEntryId: map['snatEntryId'] == null ? null : pulumi.Output.create<String>(map['snatEntryId'] as String),
      snatEntryName: map['snatEntryName'] == null ? null : pulumi.Output.create<String>(map['snatEntryName'] as String),
      snatIp: map['snatIp'] == null ? null : pulumi.Output.create<String>(map['snatIp'] as String),
      snatTableId: map['snatTableId'] == null ? null : pulumi.Output.create<String>(map['snatTableId'] as String),
      sourceCidr: map['sourceCidr'] == null ? null : pulumi.Output.create<String>(map['sourceCidr'] as String),
      sourceVswitchId: map['sourceVswitchId'] == null ? null : pulumi.Output.create<String>(map['sourceVswitchId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

