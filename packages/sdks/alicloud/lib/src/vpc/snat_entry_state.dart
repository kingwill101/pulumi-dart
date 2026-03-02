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
    this.eipAffinity,
    this.snatEntryId,
    this.snatEntryName,
    this.snatIp,
    this.snatTableId,
    this.sourceCidr,
    this.sourceVswitchId,
    this.status,
  });

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
      eipAffinity: map['eipAffinity'] == null ? null : (map['eipAffinity'] as int).input(),
      snatEntryId: map['snatEntryId'] == null ? null : (map['snatEntryId'] as String).input(),
      snatEntryName: map['snatEntryName'] == null ? null : (map['snatEntryName'] as String).input(),
      snatIp: map['snatIp'] == null ? null : (map['snatIp'] as String).input(),
      snatTableId: map['snatTableId'] == null ? null : (map['snatTableId'] as String).input(),
      sourceCidr: map['sourceCidr'] == null ? null : (map['sourceCidr'] as String).input(),
      sourceVswitchId: map['sourceVswitchId'] == null ? null : (map['sourceVswitchId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

