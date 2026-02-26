// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../app_monitor_app_monitor_configuration/app_monitor_app_monitor_configuration.dart';
import '../app_monitor_custom_events/app_monitor_custom_events.dart';

/// The set of arguments for AppMonitor.
class AppMonitorArgs {
  /// configuration data for the app monitor. See<span pulumi-lang-nodejs=" appMonitorConfiguration " pulumi-lang-dotnet=" AppMonitorConfiguration " pulumi-lang-go=" appMonitorConfiguration " pulumi-lang-python=" app_monitor_configuration " pulumi-lang-yaml=" appMonitorConfiguration " pulumi-lang-java=" appMonitorConfiguration "> app_monitor_configuration </span>below.
  final Input<AppMonitorAppMonitorConfiguration>? appMonitorConfiguration;

  /// Specifies whether this app monitor allows the web client to define and send custom events. If you omit this parameter, custom events are `DISABLED`. See<span pulumi-lang-nodejs=" customEvents " pulumi-lang-dotnet=" CustomEvents " pulumi-lang-go=" customEvents " pulumi-lang-python=" custom_events " pulumi-lang-yaml=" customEvents " pulumi-lang-java=" customEvents "> custom_events </span>below.
  final Input<AppMonitorCustomEvents>? customEvents;

  /// Data collected by RUM is kept by RUM for 30 days and then deleted. This parameter specifies whether RUM sends a copy of this telemetry data to Amazon CloudWatch Logs in your account. This enables you to keep the telemetry data for more than 30 days, but it does incur Amazon CloudWatch Logs charges. Default value is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? cwLogEnabled;
  final Input<String>? domain;
  final Input<List<String>>? domainLists;

  /// The name of the log stream.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

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
      map['appMonitorConfiguration'] = Input.mapOptionalInputValue<
              AppMonitorAppMonitorConfiguration, Map<String, dynamic>>(
          appMonitorConfigurationValue, (value) => value.toMap());
    }
    final customEventsValue = customEvents;
    if (customEventsValue != null) {
      map['customEvents'] = Input.mapOptionalInputValue<AppMonitorCustomEvents,
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
          Input.asOptionalInput<AppMonitorAppMonitorConfiguration>(
              map['appMonitorConfiguration']),
      customEvents:
          Input.asOptionalInput<AppMonitorCustomEvents>(map['customEvents']),
      cwLogEnabled: Input.asOptionalInput<bool>(map['cwLogEnabled']),
      domain: Input.asOptionalInput<String>(map['domain']),
      domainLists: Input.asOptionalInput<List<String>>(map['domainLists']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
