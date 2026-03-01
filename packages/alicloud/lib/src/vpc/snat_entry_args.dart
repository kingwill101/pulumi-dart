// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_snat_entry_snat_entry_args_doc}
/// The set of arguments for SnatEntry.
/// {@endtemplate}
/// {@macro pulumi_vpc_snat_entry_snat_entry_args_doc}
class SnatEntryArgs {
  /// Specifies whether to enable EIP affinity. Default value: `0`. Valid values:
  final pulumi.Input<int>? eipAffinity;
  /// The name of the SNAT entry. The name must be `2` to `128` characters in length. It must start with a letter but cannot start with `http://` or `https://`.
  final pulumi.Input<String>? snatEntryName;
  /// The IP of a SNAT entry. Separate multiple EIP or NAT IP addresses with commas (,). **NOTE:** From version 1.241.0, `snat_ip` can be modified.
  final pulumi.Input<String> snatIp;
  /// The ID of the SNAT table.
  final pulumi.Input<String> snatTableId;
  /// The source CIDR block specified in the SNAT entry.
  final pulumi.Input<String>? sourceCidr;
  /// The ID of the vSwitch.
  final pulumi.Input<String>? sourceVswitchId;

  /// Creates a new [SnatEntryArgs].
  /// [eipAffinity] Specifies whether to enable EIP affinity. Default value: `0`. Valid values:
  /// [snatEntryName] The name of the SNAT entry. The name must be `2` to `128` characters in length. It must start with a letter but cannot start with `http://` or `https://`.
  /// [snatIp] The IP of a SNAT entry. Separate multiple EIP or NAT IP addresses with commas (,). **NOTE:** From version 1.241.0, `snat_ip` can be modified.
  /// [snatTableId] The ID of the SNAT table.
  /// [sourceCidr] The source CIDR block specified in the SNAT entry.
  /// [sourceVswitchId] The ID of the vSwitch.
  SnatEntryArgs({
    int? eipAffinity,
    String? snatEntryName,
    required String snatIp,
    required String snatTableId,
    String? sourceCidr,
    String? sourceVswitchId,
  }) :
      eipAffinity = pulumi.Input.asOptionalInput<int>(eipAffinity),
      snatEntryName = pulumi.Input.asOptionalInput<String>(snatEntryName),
      snatIp = pulumi.Input.asInput<String>(snatIp),
      snatTableId = pulumi.Input.asInput<String>(snatTableId),
      sourceCidr = pulumi.Input.asOptionalInput<String>(sourceCidr),
      sourceVswitchId = pulumi.Input.asOptionalInput<String>(sourceVswitchId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eipAffinity': ?eipAffinity,
      'snatEntryName': ?snatEntryName,
      'snatIp': snatIp,
      'snatTableId': snatTableId,
      'sourceCidr': ?sourceCidr,
      'sourceVswitchId': ?sourceVswitchId,
    };
  }

  factory SnatEntryArgs.fromMap(Map<String, dynamic> map) {
    return SnatEntryArgs(
      eipAffinity: map['eipAffinity'] == null ? null : map['eipAffinity'] as int,
      snatEntryName: map['snatEntryName'] == null ? null : map['snatEntryName'] as String,
      snatIp: map['snatIp'] as String,
      snatTableId: map['snatTableId'] as String,
      sourceCidr: map['sourceCidr'] == null ? null : map['sourceCidr'] as String,
      sourceVswitchId: map['sourceVswitchId'] == null ? null : map['sourceVswitchId'] as String,
    );
  }
}

