// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tunnel_quota_timer_quota_timer_tunnel_quota_parameter.dart';

class TunnelQuotaTimerQuotaTimer {
  /// The time-sharing configuration start time. Reference value: 00:00
  final pulumi.Input<String> beginTime;
  /// The end time of the timesharing configuration. Reference value: 24:00
  final pulumi.Input<String> endTime;
  /// Time-sharing configuration parameters. See `tunnel_quota_parameter` below.
  final pulumi.Input<TunnelQuotaTimerQuotaTimerTunnelQuotaParameter>? tunnelQuotaParameter;

  /// Creates a new [TunnelQuotaTimerQuotaTimer].
  /// [beginTime] The time-sharing configuration start time. Reference value: 00:00
  /// [endTime] The end time of the timesharing configuration. Reference value: 24:00
  /// [tunnelQuotaParameter] Time-sharing configuration parameters. See `tunnel_quota_parameter` below.
  TunnelQuotaTimerQuotaTimer({
    required this.beginTime,
    required this.endTime,
    this.tunnelQuotaParameter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'beginTime': beginTime,
      'endTime': endTime,
      'tunnelQuotaParameter': ?pulumi.Input.mapOptionalInputValue<TunnelQuotaTimerQuotaTimerTunnelQuotaParameter, Map<String, dynamic>>(tunnelQuotaParameter, (value) => value.toMap()),
    };
  }

  factory TunnelQuotaTimerQuotaTimer.fromMap(Map<String, dynamic> map) {
    return TunnelQuotaTimerQuotaTimer(
      beginTime: (map['beginTime'] as String).input(),
      endTime: (map['endTime'] as String).input(),
      tunnelQuotaParameter: map['tunnelQuotaParameter'] == null ? null : (TunnelQuotaTimerQuotaTimerTunnelQuotaParameter.fromMap((map['tunnelQuotaParameter']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

