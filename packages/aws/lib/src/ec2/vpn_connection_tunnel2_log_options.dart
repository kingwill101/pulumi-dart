// ignore_for_file: unused_element, unnecessary_cast

import 'vpn_connection_tunnel2_log_options_cloudwatch_log_options.dart';

class VpnConnectionTunnel2LogOptions {
  /// Options for sending VPN tunnel logs to CloudWatch. See CloudWatch Log Options below for more details.
  final VpnConnectionTunnel2LogOptionsCloudwatchLogOptions?
  cloudwatchLogOptions;

  /// Creates a new [VpnConnectionTunnel2LogOptions].
  /// [cloudwatchLogOptions] Options for sending VPN tunnel logs to CloudWatch. See CloudWatch Log Options below for more details.
  VpnConnectionTunnel2LogOptions({this.cloudwatchLogOptions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudwatchLogOptions': ?cloudwatchLogOptions == null
          ? null
          : cloudwatchLogOptions!.toMap(),
    };
  }

  factory VpnConnectionTunnel2LogOptions.fromMap(Map<String, dynamic> map) {
    return VpnConnectionTunnel2LogOptions(
      cloudwatchLogOptions: map['cloudwatchLogOptions'] == null
          ? null
          : VpnConnectionTunnel2LogOptionsCloudwatchLogOptions.fromMap(
              (map['cloudwatchLogOptions'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
