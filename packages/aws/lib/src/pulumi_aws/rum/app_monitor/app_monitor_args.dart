// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../app_monitor_app_monitor_configuration/app_monitor_app_monitor_configuration.dart';
import '../app_monitor_custom_events/app_monitor_custom_events.dart';

/// The set of arguments for AppMonitor.
class AppMonitorArgs {
  /// configuration data for the app monitor. See app_monitor_configuration below.
  final pulumi.Input<AppMonitorAppMonitorConfiguration>?
      appMonitorConfiguration;

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
    final map = <String, dynamic>{};
    final appMonitorConfigurationValue = appMonitorConfiguration;
    if (appMonitorConfigurationValue != null) {
      map['appMonitorConfiguration'] = pulumi.Input.mapOptionalInputValue<
              AppMonitorAppMonitorConfiguration, Map<String, dynamic>>(
          appMonitorConfigurationValue, (value) => value.toMap());
    }
    final customEventsValue = customEvents;
    if (customEventsValue != null) {
      map['customEvents'] = pulumi.Input.mapOptionalInputValue<
          AppMonitorCustomEvents,
          Map<String, dynamic>>(customEventsValue, (value) => value.toMap());
    }
    final cwLogEnabledValue = cwLogEnabled;
    if (cwLogEnabledValue != null) {
      map['cwLogEnabled'] = cwLogEnabledValue;
    }
    final domainValue = domain;
    if (domainValue != null) {
      map['domain'] = domainValue;
    }
    final domainListsValue = domainLists;
    if (domainListsValue != null) {
      map['domainLists'] = domainListsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory AppMonitorArgs.fromMap(Map<String, dynamic> map) {
    return AppMonitorArgs(
      appMonitorConfiguration:
          pulumi.Input.asOptionalInput<AppMonitorAppMonitorConfiguration>(
              map['appMonitorConfiguration']),
      customEvents: pulumi.Input.asOptionalInput<AppMonitorCustomEvents>(
          map['customEvents']),
      cwLogEnabled: pulumi.Input.asOptionalInput<bool>(map['cwLogEnabled']),
      domain: pulumi.Input.asOptionalInput<String>(map['domain']),
      domainLists:
          pulumi.Input.asOptionalInput<List<String>>(map['domainLists']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
