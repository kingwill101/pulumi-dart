// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpn_get_gateways_get_gateways_args_doc}
/// Arguments for getGateways.
/// {@endtemplate}
/// {@macro pulumi_vpn_get_gateways_get_gateways_args_doc}
class GetGatewaysArgs {
  /// Limit search to specific business status - valid value is "Normal", "FinancialLocked".
  final pulumi.Input<String>? businessStatus;
  /// Indicates whether the IPsec-VPN feature is enabled.
  final pulumi.Input<bool>? enableIpsec;
  /// IDs of the VPN.
  final pulumi.Input<List<String>>? ids;
  /// Include ineffective ordering data.
  final pulumi.Input<bool>? includeReservationData;
  /// A regex string of VPN name.
  final pulumi.Input<String>? nameRegex;
  /// Save the result to the file.
  final pulumi.Input<String>? outputFile;
  /// Indicates whether the SSL-VPN feature is enabled. Valid value is `enable`, `disable`.
  final pulumi.Input<String>? sslVpn;
  /// Limit search to specific status - valid value is "Init", "Provisioning", "Active", "Updating", "Deleting".
  final pulumi.Input<String>? status;
  /// Use the VPC ID as the search key.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [GetGatewaysArgs].
  /// [businessStatus] Limit search to specific business status - valid value is "Normal", "FinancialLocked".
  /// [enableIpsec] Indicates whether the IPsec-VPN feature is enabled.
  /// [ids] IDs of the VPN.
  /// [includeReservationData] Include ineffective ordering data.
  /// [nameRegex] A regex string of VPN name.
  /// [outputFile] Save the result to the file.
  /// [sslVpn] Indicates whether the SSL-VPN feature is enabled. Valid value is `enable`, `disable`.
  /// [status] Limit search to specific status - valid value is "Init", "Provisioning", "Active", "Updating", "Deleting".
  /// [vpcId] Use the VPC ID as the search key.
  GetGatewaysArgs({
    this.businessStatus,
    this.enableIpsec,
    this.ids,
    this.includeReservationData,
    this.nameRegex,
    this.outputFile,
    this.sslVpn,
    this.status,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'businessStatus': ?businessStatus,
      'enableIpsec': ?enableIpsec,
      'ids': ?ids,
      'includeReservationData': ?includeReservationData,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'sslVpn': ?sslVpn,
      'status': ?status,
      'vpcId': ?vpcId,
    };
  }

  factory GetGatewaysArgs.fromMap(Map<String, dynamic> map) {
    return GetGatewaysArgs(
      businessStatus: map['businessStatus'] == null ? null : (map['businessStatus'] as String).input(),
      enableIpsec: map['enableIpsec'] == null ? null : (map['enableIpsec'] as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      includeReservationData: map['includeReservationData'] == null ? null : (map['includeReservationData'] as bool).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      sslVpn: map['sslVpn'] == null ? null : (map['sslVpn'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
    );
  }
}

