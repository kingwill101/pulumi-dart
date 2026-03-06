// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_connection_tunnel1_log_options_cloudwatch_log_options.dart';

class VpnConnectionTunnel1LogOptions {
  /// Options for sending VPN tunnel logs to CloudWatch. See CloudWatch Log Options below for more details.
  final pulumi.Input<VpnConnectionTunnel1LogOptionsCloudwatchLogOptions>? cloudwatchLogOptions;

  /// Creates a new [VpnConnectionTunnel1LogOptions].
  /// [cloudwatchLogOptions] Options for sending VPN tunnel logs to CloudWatch. See CloudWatch Log Options below for more details.
  const VpnConnectionTunnel1LogOptions({
    this.cloudwatchLogOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudwatchLogOptions': ?pulumi.Input.mapOptionalInputValue<VpnConnectionTunnel1LogOptionsCloudwatchLogOptions, Map<String, dynamic>>(cloudwatchLogOptions, (value) => value.toMap()),
    };
  }

  factory VpnConnectionTunnel1LogOptions.fromMap(Map<String, dynamic> map) {
    return VpnConnectionTunnel1LogOptions(
      cloudwatchLogOptions: (() { final guardedValue = map['cloudwatchLogOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VpnConnectionTunnel1LogOptionsCloudwatchLogOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

