// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_monitor_app_monitor_configuration.dart';
import 'app_monitor_custom_events.dart';

/// {@template pulumi_rum_app_monitor_app_monitor_args_doc}
/// The set of arguments for AppMonitor.
/// {@endtemplate}
/// {@macro pulumi_rum_app_monitor_app_monitor_args_doc}
class AppMonitorArgs {
  /// configuration data for the app monitor. See app_monitor_configuration below.
  final pulumi.Input<AppMonitorAppMonitorConfiguration>? appMonitorConfiguration;
  /// Specifies whether this app monitor allows the web client to define and send custom events. If you omit this parameter, custom events are `DISABLED`. See custom_events below.
  final pulumi.Input<AppMonitorCustomEvents>? customEvents;
  /// Data collected by RUM is kept by RUM for 30 days and then deleted. This parameter specifies whether RUM sends a copy of this telemetry data to Amazon CloudWatch Logs in your account. This enables you to keep the telemetry data for more than 30 days, but it does incur Amazon CloudWatch Logs charges. Default value is `false`.
  final pulumi.Input<bool>? cwLogEnabled;
  final pulumi.Input<String>? domain;
  final pulumi.Input<List<String>>? domainLists;
  /// The name of the log stream.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AppMonitorArgs].
  /// [appMonitorConfiguration] configuration data for the app monitor. See app_monitor_configuration below.
  /// [customEvents] Specifies whether this app monitor allows the web client to define and send custom events. If you omit this parameter, custom events are `DISABLED`. See custom_events below.
  /// [cwLogEnabled] Data collected by RUM is kept by RUM for 30 days and then deleted. This parameter specifies whether RUM sends a copy of this telemetry data to Amazon CloudWatch Logs in your account. This enables you to keep the telemetry data for more than 30 days, but it does incur Amazon CloudWatch Logs charges. Default value is `false`.
  /// [domain] Optional.
  /// [domainLists] Optional.
  /// [name] The name of the log stream.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  AppMonitorArgs({
    this.appMonitorConfiguration,
    this.customEvents,
    this.cwLogEnabled,
    this.domain,
    this.domainLists,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appMonitorConfiguration': ?pulumi.Input.mapOptionalInputValue<AppMonitorAppMonitorConfiguration, Map<String, dynamic>>(appMonitorConfiguration, (value) => value.toMap()),
      'customEvents': ?pulumi.Input.mapOptionalInputValue<AppMonitorCustomEvents, Map<String, dynamic>>(customEvents, (value) => value.toMap()),
      'cwLogEnabled': ?cwLogEnabled,
      'domain': ?domain,
      'domainLists': ?domainLists,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory AppMonitorArgs.fromMap(Map<String, dynamic> map) {
    return AppMonitorArgs(
      appMonitorConfiguration: map['appMonitorConfiguration'] == null ? null : ((AppMonitorAppMonitorConfiguration.fromMap((map['appMonitorConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      customEvents: map['customEvents'] == null ? null : ((AppMonitorCustomEvents.fromMap((map['customEvents']! as Map).cast<String, dynamic>())).input()).input(),
      cwLogEnabled: map['cwLogEnabled'] == null ? null : ((map['cwLogEnabled'] as bool).input()).input(),
      domain: map['domain'] == null ? null : ((map['domain'] as String).input()).input(),
      domainLists: map['domainLists'] == null ? null : (((map['domainLists'] as List).cast<String>()).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

