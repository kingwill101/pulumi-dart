// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_connection_tunnel2_log_options_cloudwatch_log_options.dart';

class VpnConnectionTunnel2LogOptions {
  /// Options for sending VPN tunnel logs to CloudWatch. See CloudWatch Log Options below for more details.
  final pulumi.Input<VpnConnectionTunnel2LogOptionsCloudwatchLogOptions>?
  cloudwatchLogOptions;

  /// Creates a new [VpnConnectionTunnel2LogOptions].
  /// [cloudwatchLogOptions] Options for sending VPN tunnel logs to CloudWatch. See CloudWatch Log Options below for more details.
  VpnConnectionTunnel2LogOptions({this.cloudwatchLogOptions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudwatchLogOptions':
          ?pulumi.Input.mapOptionalInputValue<
            VpnConnectionTunnel2LogOptionsCloudwatchLogOptions,
            Map<String, dynamic>
          >(cloudwatchLogOptions, (value) => value.toMap()),
    };
  }

  factory VpnConnectionTunnel2LogOptions.fromMap(Map<String, dynamic> map) {
    return VpnConnectionTunnel2LogOptions(
      cloudwatchLogOptions: (() {
        final guardedValue = map['cloudwatchLogOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VpnConnectionTunnel2LogOptionsCloudwatchLogOptions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
