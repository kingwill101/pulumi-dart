// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_connection_filter/get_connection_filter.dart';

/// Arguments for getConnection.
class GetConnectionArgs5 {
  /// Configuration block(s) for filtering. Detailed below.
  final Input<List<GetConnectionFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Identifier of the EC2 VPN Connection.
  final Input<String>? vpnConnectionId;

  GetConnectionArgs5({
    this.filters,
    this.region,
    this.vpnConnectionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<List<GetConnectionFilter>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) =>
              Input.encodeList<GetConnectionFilter, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
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

  factory GetConnectionArgs5.fromMap(Map<String, dynamic> map) {
    return GetConnectionArgs5(
      filters: Input.asOptionalInput<List<GetConnectionFilter>>(map['filters']),
      region: Input.asOptionalInput<String>(map['region']),
      vpnConnectionId: Input.asOptionalInput<String>(map['vpnConnectionId']),
    );
  }
}
