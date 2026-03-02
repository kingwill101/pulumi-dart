// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VpnConnectionTunnel2LogOptionsCloudwatchLogOptions {
  /// Enable or disable BGP logging feature. The default is `false`.
  final pulumi.Input<bool>? bgpLogEnabled;
  /// The Amazon Resource Name (ARN) of the CloudWatch log group to send BGP logs to.
  final pulumi.Input<String>? bgpLogGroupArn;
  /// Set BGP log format. Default format is json. Possible values are: `json` and `text`. The default is `json`.
  final pulumi.Input<String>? bgpLogOutputFormat;
  /// Enable or disable VPN tunnel logging feature. The default is `false`.
  final pulumi.Input<bool>? logEnabled;
  /// The Amazon Resource Name (ARN) of the CloudWatch log group to send logs to.
  final pulumi.Input<String>? logGroupArn;
  /// Set log format. Default format is json. Possible values are: `json` and `text`. The default is `json`.
  final pulumi.Input<String>? logOutputFormat;

  /// Creates a new [VpnConnectionTunnel2LogOptionsCloudwatchLogOptions].
  /// [bgpLogEnabled] Enable or disable BGP logging feature. The default is `false`.
  /// [bgpLogGroupArn] The Amazon Resource Name (ARN) of the CloudWatch log group to send BGP logs to.
  /// [bgpLogOutputFormat] Set BGP log format. Default format is json. Possible values are: `json` and `text`. The default is `json`.
  /// [logEnabled] Enable or disable VPN tunnel logging feature. The default is `false`.
  /// [logGroupArn] The Amazon Resource Name (ARN) of the CloudWatch log group to send logs to.
  /// [logOutputFormat] Set log format. Default format is json. Possible values are: `json` and `text`. The default is `json`.
  VpnConnectionTunnel2LogOptionsCloudwatchLogOptions({
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
      bgpLogEnabled: map['bgpLogEnabled'] == null ? null : ((map['bgpLogEnabled'] as bool).input()).input(),
      bgpLogGroupArn: map['bgpLogGroupArn'] == null ? null : ((map['bgpLogGroupArn'] as String).input()).input(),
      bgpLogOutputFormat: map['bgpLogOutputFormat'] == null ? null : ((map['bgpLogOutputFormat'] as String).input()).input(),
      logEnabled: map['logEnabled'] == null ? null : ((map['logEnabled'] as bool).input()).input(),
      logGroupArn: map['logGroupArn'] == null ? null : ((map['logGroupArn'] as String).input()).input(),
      logOutputFormat: map['logOutputFormat'] == null ? null : ((map['logOutputFormat'] as String).input()).input(),
    );
  }
}

