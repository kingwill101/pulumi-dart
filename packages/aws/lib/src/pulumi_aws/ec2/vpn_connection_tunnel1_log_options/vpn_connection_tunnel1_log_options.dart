// ignore_for_file: unused_element, unnecessary_cast

import '../vpn_connection_tunnel1_log_options_cloudwatch_log_options/vpn_connection_tunnel1_log_options_cloudwatch_log_options.dart';

class VpnConnectionTunnel1LogOptions {
  /// Options for sending VPN tunnel logs to CloudWatch. See CloudWatch Log Options below for more details.
  final VpnConnectionTunnel1LogOptionsCloudwatchLogOptions?
      cloudwatchLogOptions;

  VpnConnectionTunnel1LogOptions({
    this.cloudwatchLogOptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudwatchLogOptionsValue = cloudwatchLogOptions;
    if (cloudwatchLogOptionsValue != null) {
      map['cloudwatchLogOptions'] = cloudwatchLogOptionsValue.toMap();
    }
    return map;
  }

  factory VpnConnectionTunnel1LogOptions.fromMap(Map<String, dynamic> map) {
    return VpnConnectionTunnel1LogOptions(
      cloudwatchLogOptions: map['cloudwatchLogOptions'] == null
          ? null
          : VpnConnectionTunnel1LogOptionsCloudwatchLogOptions.fromMap(
              (map['cloudwatchLogOptions'] as Map).cast<String, dynamic>()),
    );
  }
}
