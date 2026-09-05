// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_monitor_app_monitor_configuration.dart';
import 'app_monitor_custom_events.dart';

/// {@template pulumi_rum_app_monitor_app_monitor_args_doc}
/// The set of arguments for AppMonitor.
/// {@endtemplate}
/// {@macro pulumi_rum_app_monitor_app_monitor_args_doc}
class AppMonitorArgs {
  /// configuration data for the app monitor. See appMonitorConfiguration below.
  final pulumi.Input<AppMonitorAppMonitorConfiguration?>? appMonitorConfiguration;
  /// Specifies whether this app monitor allows the web client to define and send custom events. If you omit this parameter, custom events are `DISABLED`. See customEvents below.
  final pulumi.Input<AppMonitorCustomEvents?>? customEvents;
  /// Data collected by RUM is kept by RUM for 30 days and then deleted. This parameter specifies whether RUM sends a copy of this telemetry data to Amazon CloudWatch Logs in your account. This enables you to keep the telemetry data for more than 30 days, but it does incur Amazon CloudWatch Logs charges. Default value is `false`.
  final pulumi.Input<bool?>? cwLogEnabled;
  /// The top-level internet domain name for which your application has administrative authority. Exactly one of `domain` or `domainList` must be specified.
  final pulumi.Input<String?>? domain;
  /// A list of internet domain names for which your application has administrative authority. Exactly one of `domain` or `domainList` must be specified.
  final pulumi.Input<List<String>?>? domainLists;
  /// The name of the log stream.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [AppMonitorArgs].
  /// [appMonitorConfiguration] configuration data for the app monitor. See appMonitorConfiguration below.
  /// [customEvents] Specifies whether this app monitor allows the web client to define and send custom events. If you omit this parameter, custom events are `DISABLED`. See customEvents below.
  /// [cwLogEnabled] Data collected by RUM is kept by RUM for 30 days and then deleted. This parameter specifies whether RUM sends a copy of this telemetry data to Amazon CloudWatch Logs in your account. This enables you to keep the telemetry data for more than 30 days, but it does incur Amazon CloudWatch Logs charges. Default value is `false`.
  /// [domain] The top-level internet domain name for which your application has administrative authority. Exactly one of `domain` or `domainList` must be specified.
  /// [domainLists] A list of internet domain names for which your application has administrative authority. Exactly one of `domain` or `domainList` must be specified.
  /// [name] The name of the log stream.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const AppMonitorArgs({
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
      appMonitorConfiguration: (() { final guardedValue = map['appMonitorConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppMonitorAppMonitorConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customEvents: (() { final guardedValue = map['customEvents']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppMonitorCustomEvents.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cwLogEnabled: (() { final guardedValue = map['cwLogEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainLists: (() { final guardedValue = map['domainLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
