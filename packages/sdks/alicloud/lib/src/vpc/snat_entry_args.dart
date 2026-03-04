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
    this.eipAffinity,
    this.snatEntryName,
    required this.snatIp,
    required this.snatTableId,
    this.sourceCidr,
    this.sourceVswitchId,
  });

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
      eipAffinity: (() {
        final guardedValue = map['eipAffinity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      snatEntryName: (() {
        final guardedValue = map['snatEntryName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      snatIp: pulumi.Input.fromValue(map['snatIp'] as String),
      snatTableId: pulumi.Input.fromValue(map['snatTableId'] as String),
      sourceCidr: (() {
        final guardedValue = map['sourceCidr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceVswitchId: (() {
        final guardedValue = map['sourceVswitchId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
