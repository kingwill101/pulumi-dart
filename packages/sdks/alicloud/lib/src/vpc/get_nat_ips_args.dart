// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_get_nat_ips_get_nat_ips_args_doc}
/// Arguments for getNatIps.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_nat_ips_get_nat_ips_args_doc}
class GetNatIpsArgs {
  /// A list of Nat Ip IDs.
  final pulumi.Input<List<String>>? ids;

  /// A regex string to filter results by Nat Ip name.
  final pulumi.Input<String>? nameRegex;

  /// The ID of the Virtual Private Cloud (VPC) NAT gateway for which you want to create the NAT IP address.
  final pulumi.Input<String> natGatewayId;

  /// NAT IP ADDRESS of the address segment.
  final pulumi.Input<String>? natIpCidr;
  final pulumi.Input<List<String>>? natIpIds;

  /// NAT IP ADDRESS the name of the root directory. Length is from `2` to `128` characters, must start with a letter or the Chinese at the beginning can contain numbers, half a period (.), underscore (_) and dash (-). But do not start with `http://` or `https://` at the beginning.
  final pulumi.Input<List<String>>? natIpNames;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// The status of the NAT IP address. Valid values: `Available`, `Deleting` and `Creating`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetNatIpsArgs].
  /// [ids] A list of Nat Ip IDs.
  /// [nameRegex] A regex string to filter results by Nat Ip name.
  /// [natGatewayId] The ID of the Virtual Private Cloud (VPC) NAT gateway for which you want to create the NAT IP address.
  /// [natIpCidr] NAT IP ADDRESS of the address segment.
  /// [natIpIds] Optional.
  /// [natIpNames] NAT IP ADDRESS the name of the root directory. Length is from `2` to `128` characters, must start with a letter or the Chinese at the beginning can contain numbers, half a period (.), underscore (_) and dash (-). But do not start with `http://` or `https://` at the beginning.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the NAT IP address. Valid values: `Available`, `Deleting` and `Creating`.
  GetNatIpsArgs({
    this.ids,
    this.nameRegex,
    required this.natGatewayId,
    this.natIpCidr,
    this.natIpIds,
    this.natIpNames,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'natGatewayId': natGatewayId,
      'natIpCidr': ?natIpCidr,
      'natIpIds': ?natIpIds,
      'natIpNames': ?natIpNames,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetNatIpsArgs.fromMap(Map<String, dynamic> map) {
    return GetNatIpsArgs(
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      natGatewayId: pulumi.Input.fromValue(map['natGatewayId'] as String),
      natIpCidr: (() {
        final guardedValue = map['natIpCidr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      natIpIds: (() {
        final guardedValue = map['natIpIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      natIpNames: (() {
        final guardedValue = map['natIpNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
