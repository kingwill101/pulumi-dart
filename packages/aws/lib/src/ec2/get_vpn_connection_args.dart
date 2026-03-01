// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpn_connection_filter.dart';

/// {@template pulumi_ec2_get_vpn_connection_get_vpn_connection_args_doc}
/// Arguments for getVpnConnection.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_vpn_connection_get_vpn_connection_args_doc}
class GetVpnConnectionArgs {
  /// Configuration block(s) for filtering. Detailed below.
  final pulumi.Input<List<GetVpnConnectionFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Identifier of the EC2 VPN Connection.
  final pulumi.Input<String>? vpnConnectionId;

  /// Creates a new [GetVpnConnectionArgs].
  /// [filters] Configuration block(s) for filtering. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vpnConnectionId] Identifier of the EC2 VPN Connection.
  GetVpnConnectionArgs({
    List<GetVpnConnectionFilter>? filters,
    String? region,
    String? vpnConnectionId,
  }) : filters = pulumi.Input.asOptionalInput<List<GetVpnConnectionFilter>>(
         filters,
       ),
       region = pulumi.Input.asOptionalInput<String>(region),
       vpnConnectionId = pulumi.Input.asOptionalInput<String>(vpnConnectionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetVpnConnectionFilter>,
            List<Map<String, dynamic>>
          >(
            filters,
            (value) =>
                pulumi.Input.encodeList<
                  GetVpnConnectionFilter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'region': ?region,
      'vpnConnectionId': ?vpnConnectionId,
    };
  }

  factory GetVpnConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetVpnConnectionArgs(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetVpnConnectionFilter>(
              map['filters'],
              (value) => GetVpnConnectionFilter.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      region: map['region'] == null ? null : map['region'] as String,
      vpnConnectionId: map['vpnConnectionId'] == null
          ? null
          : map['vpnConnectionId'] as String,
    );
  }
}
