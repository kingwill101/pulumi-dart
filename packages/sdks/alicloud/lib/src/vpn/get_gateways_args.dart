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
      businessStatus: (() {
        final guardedValue = map['businessStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enableIpsec: (() {
        final guardedValue = map['enableIpsec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      includeReservationData: (() {
        final guardedValue = map['includeReservationData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sslVpn: (() {
        final guardedValue = map['sslVpn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
