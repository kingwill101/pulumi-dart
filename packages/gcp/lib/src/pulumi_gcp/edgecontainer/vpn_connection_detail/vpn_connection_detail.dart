// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../vpn_connection_detail_cloud_router/vpn_connection_detail_cloud_router.dart';
import '../vpn_connection_detail_cloud_vpn/vpn_connection_detail_cloud_vpn.dart';

class VpnConnectionDetail {
  /// (Output)
  /// The Cloud Router info.
  /// Structure is documented below.
  final List<VpnConnectionDetailCloudRouter>? cloudRouters;

  /// (Output)
  /// Each connection has multiple Cloud VPN gateways.
  /// Structure is documented below.
  final List<VpnConnectionDetailCloudVpn>? cloudVpns;

  /// (Output)
  /// The error message. This is only populated when state=ERROR.
  final String? error;

  /// (Output)
  /// The current connection state.
  final String? state;

  VpnConnectionDetail({
    this.cloudRouters,
    this.cloudVpns,
    this.error,
    this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudRoutersValue = cloudRouters;
    if (cloudRoutersValue != null) {
      map['cloudRouters'] = Input.encodeList<VpnConnectionDetailCloudRouter,
          Map<String, dynamic>>(cloudRoutersValue, (value) => value.toMap());
    }
    final cloudVpnsValue = cloudVpns;
    if (cloudVpnsValue != null) {
      map['cloudVpns'] =
          Input.encodeList<VpnConnectionDetailCloudVpn, Map<String, dynamic>>(
              cloudVpnsValue, (value) => value.toMap());
    }
    final errorValue = error;
    if (errorValue != null) {
      map['error'] = errorValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    return map;
  }

  factory VpnConnectionDetail.fromMap(Map<String, dynamic> map) {
    return VpnConnectionDetail(
      cloudRouters: map['cloudRouters'] == null
          ? null
          : Input.decodeList<VpnConnectionDetailCloudRouter>(
              map['cloudRouters'],
              (value) => VpnConnectionDetailCloudRouter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      cloudVpns: map['cloudVpns'] == null
          ? null
          : Input.decodeList<VpnConnectionDetailCloudVpn>(
              map['cloudVpns'],
              (value) => VpnConnectionDetailCloudVpn.fromMap(
                  (value as Map).cast<String, dynamic>())),
      error: map['error'] == null ? null : map['error'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}
