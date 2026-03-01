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
    pulumi.Output<String>? businessStatus,
    pulumi.Output<bool>? enableIpsec,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<bool>? includeReservationData,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? sslVpn,
    pulumi.Output<String>? status,
    pulumi.Output<String>? vpcId,
  }) :
      businessStatus = pulumi.Input.asOptionalInput<String>(businessStatus),
      enableIpsec = pulumi.Input.asOptionalInput<bool>(enableIpsec),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      includeReservationData = pulumi.Input.asOptionalInput<bool>(includeReservationData),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      sslVpn = pulumi.Input.asOptionalInput<String>(sslVpn),
      status = pulumi.Input.asOptionalInput<String>(status),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

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
      businessStatus: map['businessStatus'] == null ? null : pulumi.Output.create<String>(map['businessStatus'] as String),
      enableIpsec: map['enableIpsec'] == null ? null : pulumi.Output.create<bool>(map['enableIpsec'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      includeReservationData: map['includeReservationData'] == null ? null : pulumi.Output.create<bool>(map['includeReservationData'] as bool),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      sslVpn: map['sslVpn'] == null ? null : pulumi.Output.create<String>(map['sslVpn'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

