// ignore_for_file: unused_element, unnecessary_cast

class VpnConnectionTunnel1LogOptionsCloudwatchLogOptions {
  /// Enable or disable BGP logging feature. The default is `false`.
  final bool? bgpLogEnabled;

  /// The Amazon Resource Name (ARN) of the CloudWatch log group to send BGP logs to.
  final String? bgpLogGroupArn;

  /// Set BGP log format. Default format is json. Possible values are: `json` and `text`. The default is `json`.
  final String? bgpLogOutputFormat;

  /// Enable or disable VPN tunnel logging feature. The default is `false`.
  final bool? logEnabled;

  /// The Amazon Resource Name (ARN) of the CloudWatch log group to send logs to.
  final String? logGroupArn;

  /// Set log format. Default format is json. Possible values are: `json` and `text`. The default is `json`.
  final String? logOutputFormat;

  VpnConnectionTunnel1LogOptionsCloudwatchLogOptions({
    this.bgpLogEnabled,
    this.bgpLogGroupArn,
    this.bgpLogOutputFormat,
    this.logEnabled,
    this.logGroupArn,
    this.logOutputFormat,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bgpLogEnabledValue = bgpLogEnabled;
    if (bgpLogEnabledValue != null) {
      map['bgpLogEnabled'] = bgpLogEnabledValue;
    }
    final bgpLogGroupArnValue = bgpLogGroupArn;
    if (bgpLogGroupArnValue != null) {
      map['bgpLogGroupArn'] = bgpLogGroupArnValue;
    }
    final bgpLogOutputFormatValue = bgpLogOutputFormat;
    if (bgpLogOutputFormatValue != null) {
      map['bgpLogOutputFormat'] = bgpLogOutputFormatValue;
    }
    final logEnabledValue = logEnabled;
    if (logEnabledValue != null) {
      map['logEnabled'] = logEnabledValue;
    }
    final logGroupArnValue = logGroupArn;
    if (logGroupArnValue != null) {
      map['logGroupArn'] = logGroupArnValue;
    }
    final logOutputFormatValue = logOutputFormat;
    if (logOutputFormatValue != null) {
      map['logOutputFormat'] = logOutputFormatValue;
    }
    return map;
  }

  factory VpnConnectionTunnel1LogOptionsCloudwatchLogOptions.fromMap(
      Map<String, dynamic> map) {
    return VpnConnectionTunnel1LogOptionsCloudwatchLogOptions(
      bgpLogEnabled:
          map['bgpLogEnabled'] == null ? null : map['bgpLogEnabled'] as bool,
      bgpLogGroupArn: map['bgpLogGroupArn'] == null
          ? null
          : map['bgpLogGroupArn'] as String,
      bgpLogOutputFormat: map['bgpLogOutputFormat'] == null
          ? null
          : map['bgpLogOutputFormat'] as String,
      logEnabled: map['logEnabled'] == null ? null : map['logEnabled'] as bool,
      logGroupArn:
          map['logGroupArn'] == null ? null : map['logGroupArn'] as String,
      logOutputFormat: map['logOutputFormat'] == null
          ? null
          : map['logOutputFormat'] as String,
    );
  }
}
