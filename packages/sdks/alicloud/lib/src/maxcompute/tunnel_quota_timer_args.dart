// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tunnel_quota_timer_quota_timer.dart';

/// {@template pulumi_maxcompute_tunnel_quota_timer_tunnel_quota_timer_args_doc}
/// The set of arguments for TunnelQuotaTimer.
/// {@endtemplate}
/// {@macro pulumi_maxcompute_tunnel_quota_timer_tunnel_quota_timer_args_doc}
class TunnelQuotaTimerArgs {
  /// The nickname of the exclusive Resource Group (Tunnel Quota) for the level - 1 data transmission service.
  final pulumi.Input<String> nickname;
  /// Time-Sharing configuration
  ///
  /// > **NOTE:** -- The same reserved Quota resource group supports up to 48 time intervals. The minimum duration of a time interval is 30 minutes. -- After the current data transmission service is configured for time-sharing, if you need to perform a downgrade operation on the data transmission service (package year and month), please reduce the time-sharing concurrency first. -- The effective time of the time-sharing configuration is 0 to 5 minutes, and the billing will be calculated according to the actual effective time. -- Please make sure to set the time range completely from 00:00 to 24:00
  /// See `quota_timer` below.
  final pulumi.Input<List<TunnelQuotaTimerQuotaTimer>>? quotaTimers;
  /// Time zone, reference: Asia/Shanghai
  /// In general, the system will automatically generate the time zone according to the region without configuration.
  final pulumi.Input<String>? timeZone;

  /// Creates a new [TunnelQuotaTimerArgs].
  /// [nickname] The nickname of the exclusive Resource Group (Tunnel Quota) for the level - 1 data transmission service.
  /// [quotaTimers] Time-Sharing configuration
  /// [timeZone] Time zone, reference: Asia/Shanghai
  TunnelQuotaTimerArgs({
    required this.nickname,
    this.quotaTimers,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nickname': nickname,
      'quotaTimers': ?pulumi.Input.mapOptionalInputValue<List<TunnelQuotaTimerQuotaTimer>, List<Map<String, dynamic>>>(quotaTimers, (value) => pulumi.Input.encodeList<TunnelQuotaTimerQuotaTimer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeZone': ?timeZone,
    };
  }

  factory TunnelQuotaTimerArgs.fromMap(Map<String, dynamic> map) {
    return TunnelQuotaTimerArgs(
      nickname: (map['nickname'] as String).input(),
      quotaTimers: map['quotaTimers'] == null ? null : (pulumi.Input.decodeList<TunnelQuotaTimerQuotaTimer>(map['quotaTimers'], (value) => TunnelQuotaTimerQuotaTimer.fromMap((value as Map).cast<String, dynamic>()))).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone'] as String).input(),
    );
  }
}

