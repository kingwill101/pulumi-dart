// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zonal_autoshift_configuration_blocking_alarm.dart';
import 'zonal_autoshift_configuration_outcome_alarm.dart';

/// {@template pulumi_arczonalshift_zonal_autoshift_configuration_zonal_autoshift_configuration_args_doc}
/// The set of arguments for ZonalAutoshiftConfiguration.
/// {@endtemplate}
/// {@macro pulumi_arczonalshift_zonal_autoshift_configuration_zonal_autoshift_configuration_args_doc}
class ZonalAutoshiftConfigurationArgs {
  /// List of time windows during which practice runs are allowed, in the format `Day:HH:MM-Day:HH:MM` (e.g., `Mon:09:00-Mon:17:00`). Cannot be used together with `blockedWindows`.
  final pulumi.Input<List<String>>? allowedWindows;
  /// List of dates when practice runs should not be started, in the format `YYYY-MM-DD`.
  final pulumi.Input<List<String>>? blockedDates;
  /// List of time windows during which practice runs should not be started, in the format `Day:HH:MM-Day:HH:MM` (e.g., `Mon:00:00-Mon:08:00`). Cannot be used together with `allowedWindows`.
  final pulumi.Input<List<String>>? blockedWindows;
  /// List of CloudWatch alarms that can block practice runs when in alarm state. See `blockingAlarms` below.
  final pulumi.Input<List<ZonalAutoshiftConfigurationBlockingAlarm>>? blockingAlarms;
  /// List of CloudWatch alarms monitored during practice runs. See `outcomeAlarms` below.
  final pulumi.Input<List<ZonalAutoshiftConfigurationOutcomeAlarm>>? outcomeAlarms;
  /// AWS region where the resource is deployed.
  final pulumi.Input<String>? region;
  /// The ARN of the managed resource to configure zonal autoshift for (e.g., an Application Load Balancer). Changing this creates a new resource.
  final pulumi.Input<String> resourceArn;
  /// The status of zonal autoshift. Valid values: `ENABLED`, `DISABLED`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> zonalAutoshiftStatus;

  /// Creates a new [ZonalAutoshiftConfigurationArgs].
  /// [allowedWindows] List of time windows during which practice runs are allowed, in the format `Day:HH:MM-Day:HH:MM` (e.g., `Mon:09:00-Mon:17:00`). Cannot be used together with `blockedWindows`.
  /// [blockedDates] List of dates when practice runs should not be started, in the format `YYYY-MM-DD`.
  /// [blockedWindows] List of time windows during which practice runs should not be started, in the format `Day:HH:MM-Day:HH:MM` (e.g., `Mon:00:00-Mon:08:00`). Cannot be used together with `allowedWindows`.
  /// [blockingAlarms] List of CloudWatch alarms that can block practice runs when in alarm state. See `blockingAlarms` below.
  /// [outcomeAlarms] List of CloudWatch alarms monitored during practice runs. See `outcomeAlarms` below.
  /// [region] AWS region where the resource is deployed.
  /// [resourceArn] The ARN of the managed resource to configure zonal autoshift for (e.g., an Application Load Balancer). Changing this creates a new resource.
  /// [zonalAutoshiftStatus] The status of zonal autoshift. Valid values: `ENABLED`, `DISABLED`.
  const ZonalAutoshiftConfigurationArgs({
    this.allowedWindows,
    this.blockedDates,
    this.blockedWindows,
    this.blockingAlarms,
    this.outcomeAlarms,
    this.region,
    required this.resourceArn,
    required this.zonalAutoshiftStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedWindows': ?allowedWindows,
      'blockedDates': ?blockedDates,
      'blockedWindows': ?blockedWindows,
      'blockingAlarms': ?pulumi.Input.mapOptionalInputValue<List<ZonalAutoshiftConfigurationBlockingAlarm>, List<Map<String, dynamic>>>(blockingAlarms, (value) => pulumi.Input.encodeList<ZonalAutoshiftConfigurationBlockingAlarm, Map<String, dynamic>>(value, (value) => value.toMap())),
      'outcomeAlarms': ?pulumi.Input.mapOptionalInputValue<List<ZonalAutoshiftConfigurationOutcomeAlarm>, List<Map<String, dynamic>>>(outcomeAlarms, (value) => pulumi.Input.encodeList<ZonalAutoshiftConfigurationOutcomeAlarm, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'resourceArn': resourceArn,
      'zonalAutoshiftStatus': zonalAutoshiftStatus,
    };
  }

  factory ZonalAutoshiftConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return ZonalAutoshiftConfigurationArgs(
      allowedWindows: (() { final guardedValue = map['allowedWindows']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      blockedDates: (() { final guardedValue = map['blockedDates']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      blockedWindows: (() { final guardedValue = map['blockedWindows']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      blockingAlarms: (() { final guardedValue = map['blockingAlarms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZonalAutoshiftConfigurationBlockingAlarm>(guardedValue, (value) => ZonalAutoshiftConfigurationBlockingAlarm.fromMap((value as Map).cast<String, dynamic>()))); })(),
      outcomeAlarms: (() { final guardedValue = map['outcomeAlarms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZonalAutoshiftConfigurationOutcomeAlarm>(guardedValue, (value) => ZonalAutoshiftConfigurationOutcomeAlarm.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceArn: pulumi.Input.fromValue(map['resourceArn'] as String),
      zonalAutoshiftStatus: pulumi.Input.fromValue(map['zonalAutoshiftStatus'] as String),
    );
  }
}
