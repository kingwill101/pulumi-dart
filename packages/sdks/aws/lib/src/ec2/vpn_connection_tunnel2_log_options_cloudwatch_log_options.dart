// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VpnConnectionTunnel2LogOptionsCloudwatchLogOptions {
  /// Enable or disable BGP logging feature. The default is `false`.
  final pulumi.Input<bool?>? bgpLogEnabled;
  /// ARN of the CloudWatch log group to send BGP logs to.
  final pulumi.Input<String?>? bgpLogGroupArn;
  /// Set BGP log format. Default format is json. Possible values are: `json` and `text`. The default is `json`.
  final pulumi.Input<String?>? bgpLogOutputFormat;
  /// Enable or disable VPN tunnel logging feature. The default is `false`.
  final pulumi.Input<bool?>? logEnabled;
  /// ARN of the CloudWatch log group to send logs to.
  final pulumi.Input<String?>? logGroupArn;
  /// Set log format. Default format is json. Possible values are: `json` and `text`. The default is `json`.
  final pulumi.Input<String?>? logOutputFormat;

  /// Creates a new [VpnConnectionTunnel2LogOptionsCloudwatchLogOptions].
  /// [bgpLogEnabled] Enable or disable BGP logging feature. The default is `false`.
  /// [bgpLogGroupArn] ARN of the CloudWatch log group to send BGP logs to.
  /// [bgpLogOutputFormat] Set BGP log format. Default format is json. Possible values are: `json` and `text`. The default is `json`.
  /// [logEnabled] Enable or disable VPN tunnel logging feature. The default is `false`.
  /// [logGroupArn] ARN of the CloudWatch log group to send logs to.
  /// [logOutputFormat] Set log format. Default format is json. Possible values are: `json` and `text`. The default is `json`.
  const VpnConnectionTunnel2LogOptionsCloudwatchLogOptions({
    this.bgpLogEnabled,
    this.bgpLogGroupArn,
    this.bgpLogOutputFormat,
    this.logEnabled,
    this.logGroupArn,
    this.logOutputFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpLogEnabled': ?bgpLogEnabled,
      'bgpLogGroupArn': ?bgpLogGroupArn,
      'bgpLogOutputFormat': ?bgpLogOutputFormat,
      'logEnabled': ?logEnabled,
      'logGroupArn': ?logGroupArn,
      'logOutputFormat': ?logOutputFormat,
    };
  }

  factory VpnConnectionTunnel2LogOptionsCloudwatchLogOptions.fromMap(Map<String, dynamic> map) {
    return VpnConnectionTunnel2LogOptionsCloudwatchLogOptions(
      bgpLogEnabled: (() { final guardedValue = map['bgpLogEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      bgpLogGroupArn: (() { final guardedValue = map['bgpLogGroupArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bgpLogOutputFormat: (() { final guardedValue = map['bgpLogOutputFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logEnabled: (() { final guardedValue = map['logEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logGroupArn: (() { final guardedValue = map['logGroupArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logOutputFormat: (() { final guardedValue = map['logOutputFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
