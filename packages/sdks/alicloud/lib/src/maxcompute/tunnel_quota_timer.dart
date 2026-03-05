import 'package:pulumi/pulumi.dart' as pulumi;
import 'tunnel_quota_timer_args.dart';
import 'tunnel_quota_timer_state.dart';

/// ## Import
///
/// Max Compute Tunnel Quota Timer can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:maxcompute/tunnelQuotaTimer:TunnelQuotaTimer example <id>
/// ```
class TunnelQuotaTimer extends pulumi.CustomResource {
  /// The nickname of the exclusive Resource Group (Tunnel Quota) for the level - 1 data transmission service.
  late final pulumi.Output<String> nickname;
  /// Time-Sharing configuration
  ///
  /// &gt; **NOTE:** -- The same reserved Quota resource group supports up to 48 time intervals. The minimum duration of a time interval is 30 minutes. -- After the current data transmission service is configured for time-sharing, if you need to perform a downgrade operation on the data transmission service (package year and month), please reduce the time-sharing concurrency first. -- The effective time of the time-sharing configuration is 0 to 5 minutes, and the billing will be calculated according to the actual effective time. -- Please make sure to set the time range completely from 00:00 to 24:00
  /// See `quota_timer` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> quotaTimers;
  /// Time zone, reference: Asia/Shanghai
  /// In general, the system will automatically generate the time zone according to the region without configuration.
  late final pulumi.Output<String?> timeZone;

  /// Creates a new [TunnelQuotaTimer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TunnelQuotaTimer]. {@macro pulumi_maxcompute_tunnel_quota_timer_tunnel_quota_timer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TunnelQuotaTimer(
    String name, {
    TunnelQuotaTimerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:maxcompute/tunnelQuotaTimer:TunnelQuotaTimer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    nickname = registerOutput<String>('nickname');
    quotaTimers = registerOutput<List<Map<String, dynamic>>?>('quotaTimers');
    timeZone = registerOutput<String?>('timeZone');
  }

  /// Gets an existing [TunnelQuotaTimer] resource's state with the given [name] and [id].
  static TunnelQuotaTimer get(
    String name,
    pulumi.Input<String> id, {
    TunnelQuotaTimerState? state,
  }) {
    return TunnelQuotaTimer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TunnelQuotaTimer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:maxcompute/tunnelQuotaTimer:TunnelQuotaTimer',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    nickname = registerOutput<String>('nickname');
    quotaTimers = registerOutput<List<Map<String, dynamic>>?>('quotaTimers');
    timeZone = registerOutput<String?>('timeZone');
  }
}
