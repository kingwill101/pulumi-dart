// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_vpn_connection_filter/get_vpn_connection_filter.dart';

/// Arguments for getVpnConnection.
class GetVpnConnectionArgs {
  /// Configuration block(s) for filtering. Detailed below.
  final pulumi.Input<List<GetVpnConnectionFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Identifier of the EC2 VPN Connection.
  final pulumi.Input<String>? vpnConnectionId;

  GetVpnConnectionArgs({
    this.filters,
    this.region,
    this.vpnConnectionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetVpnConnectionFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => pulumi.Input.encodeList<GetVpnConnectionFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final vpnConnectionIdValue = vpnConnectionId;
    if (vpnConnectionIdValue != null) {
      map['vpnConnectionId'] = vpnConnectionIdValue;
    }
    return map;
  }

  factory GetVpnConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetVpnConnectionArgs(
      filters: pulumi.Input.asOptionalInput<List<GetVpnConnectionFilter>>(
          map['filters']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      vpnConnectionId:
          pulumi.Input.asOptionalInput<String>(map['vpnConnectionId']),
    );
  }
}
