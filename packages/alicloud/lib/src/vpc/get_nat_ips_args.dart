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
    List<String>? ids,
    String? nameRegex,
    required String natGatewayId,
    String? natIpCidr,
    List<String>? natIpIds,
    List<String>? natIpNames,
    String? outputFile,
    String? status,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      natGatewayId = pulumi.Input.asInput<String>(natGatewayId),
      natIpCidr = pulumi.Input.asOptionalInput<String>(natIpCidr),
      natIpIds = pulumi.Input.asOptionalInput<List<String>>(natIpIds),
      natIpNames = pulumi.Input.asOptionalInput<List<String>>(natIpNames),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      natGatewayId: map['natGatewayId'] as String,
      natIpCidr: map['natIpCidr'] == null ? null : map['natIpCidr'] as String,
      natIpIds: map['natIpIds'] == null ? null : (map['natIpIds'] as List).cast<String>(),
      natIpNames: map['natIpNames'] == null ? null : (map['natIpNames'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

