// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_get_public_ip_address_pools_get_public_ip_address_pools_args_doc}
/// Arguments for getPublicIpAddressPools.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_public_ip_address_pools_get_public_ip_address_pools_args_doc}
class GetPublicIpAddressPoolsArgs {
  /// A list of Vpc Public Ip Address Pool IDs.
  final pulumi.Input<List<String>>? ids;
  /// The Internet service provider. Valid values: `BGP`, `BGP_PRO`, `ChinaTelecom`, `ChinaUnicom`, `ChinaMobile`, `ChinaTelecom_L2`, `ChinaUnicom_L2`, `ChinaMobile_L2`, `BGP_FinanceCloud`.
  final pulumi.Input<String>? isp;
  /// A regex string to filter results by Vpc Public Ip Address Pool name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The IDs of the Vpc Public IP address pools.
  final pulumi.Input<List<String>>? publicIpAddressPoolIds;
  /// The name of the VPC Public IP address pool.
  final pulumi.Input<String>? publicIpAddressPoolName;
  /// The status of the Vpc Public Ip Address Pool. Valid values: `Created`, `Deleting`, `Modifying`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetPublicIpAddressPoolsArgs].
  /// [ids] A list of Vpc Public Ip Address Pool IDs.
  /// [isp] The Internet service provider. Valid values: `BGP`, `BGP_PRO`, `ChinaTelecom`, `ChinaUnicom`, `ChinaMobile`, `ChinaTelecom_L2`, `ChinaUnicom_L2`, `ChinaMobile_L2`, `BGP_FinanceCloud`.
  /// [nameRegex] A regex string to filter results by Vpc Public Ip Address Pool name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [publicIpAddressPoolIds] The IDs of the Vpc Public IP address pools.
  /// [publicIpAddressPoolName] The name of the VPC Public IP address pool.
  /// [status] The status of the Vpc Public Ip Address Pool. Valid values: `Created`, `Deleting`, `Modifying`.
  GetPublicIpAddressPoolsArgs({
    List<String>? ids,
    String? isp,
    String? nameRegex,
    String? outputFile,
    List<String>? publicIpAddressPoolIds,
    String? publicIpAddressPoolName,
    String? status,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      isp = pulumi.Input.asOptionalInput<String>(isp),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      publicIpAddressPoolIds = pulumi.Input.asOptionalInput<List<String>>(publicIpAddressPoolIds),
      publicIpAddressPoolName = pulumi.Input.asOptionalInput<String>(publicIpAddressPoolName),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'isp': ?isp,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'publicIpAddressPoolIds': ?publicIpAddressPoolIds,
      'publicIpAddressPoolName': ?publicIpAddressPoolName,
      'status': ?status,
    };
  }

  factory GetPublicIpAddressPoolsArgs.fromMap(Map<String, dynamic> map) {
    return GetPublicIpAddressPoolsArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      isp: map['isp'] == null ? null : map['isp'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      publicIpAddressPoolIds: map['publicIpAddressPoolIds'] == null ? null : (map['publicIpAddressPoolIds'] as List).cast<String>(),
      publicIpAddressPoolName: map['publicIpAddressPoolName'] == null ? null : map['publicIpAddressPoolName'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

