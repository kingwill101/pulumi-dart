// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_monitor_app_monitor_configuration.dart';
import 'app_monitor_custom_events.dart';

/// Input properties used for looking up and filtering AppMonitor resources.
class AppMonitorState {
  /// configuration data for the app monitor. See app_monitor_configuration below.
  final pulumi.Input<AppMonitorAppMonitorConfiguration>? appMonitorConfiguration;
  /// The unique ID of the app monitor. Useful for JS templates.
  final pulumi.Input<String>? appMonitorId;
  /// The Amazon Resource Name (ARN) specifying the app monitor.
  final pulumi.Input<String>? arn;
  /// Specifies whether this app monitor allows the web client to define and send custom events. If you omit this parameter, custom events are `DISABLED`. See custom_events below.
  final pulumi.Input<AppMonitorCustomEvents>? customEvents;
  /// Data collected by RUM is kept by RUM for 30 days and then deleted. This parameter specifies whether RUM sends a copy of this telemetry data to Amazon CloudWatch Logs in your account. This enables you to keep the telemetry data for more than 30 days, but it does incur Amazon CloudWatch Logs charges. Default value is `false`.
  final pulumi.Input<bool>? cwLogEnabled;
  /// The name of the log group where the copies are stored.
  final pulumi.Input<String>? cwLogGroup;
  final pulumi.Input<String>? domain;
  final pulumi.Input<List<String>>? domainLists;
  /// The name of the log stream.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [AppMonitorState].
  /// [appMonitorConfiguration] configuration data for the app monitor. See app_monitor_configuration below.
  /// [appMonitorId] The unique ID of the app monitor. Useful for JS templates.
  /// [arn] The Amazon Resource Name (ARN) specifying the app monitor.
  /// [customEvents] Specifies whether this app monitor allows the web client to define and send custom events. If you omit this parameter, custom events are `DISABLED`. See custom_events below.
  /// [cwLogEnabled] Data collected by RUM is kept by RUM for 30 days and then deleted. This parameter specifies whether RUM sends a copy of this telemetry data to Amazon CloudWatch Logs in your account. This enables you to keep the telemetry data for more than 30 days, but it does incur Amazon CloudWatch Logs charges. Default value is `false`.
  /// [cwLogGroup] The name of the log group where the copies are stored.
  /// [domain] Optional.
  /// [domainLists] Optional.
  /// [name] The name of the log stream.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  AppMonitorState({
    this.appMonitorConfiguration,
    this.appMonitorId,
    this.arn,
    this.customEvents,
    this.cwLogEnabled,
    this.cwLogGroup,
    this.domain,
    this.domainLists,
    this.name,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appMonitorConfiguration': ?pulumi.Input.mapOptionalInputValue<AppMonitorAppMonitorConfiguration, Map<String, dynamic>>(appMonitorConfiguration, (value) => value.toMap()),
      'appMonitorId': ?appMonitorId,
      'arn': ?arn,
      'customEvents': ?pulumi.Input.mapOptionalInputValue<AppMonitorCustomEvents, Map<String, dynamic>>(customEvents, (value) => value.toMap()),
      'cwLogEnabled': ?cwLogEnabled,
      'cwLogGroup': ?cwLogGroup,
      'domain': ?domain,
      'domainLists': ?domainLists,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory AppMonitorState.fromMap(Map<String, dynamic> map) {
    return AppMonitorState(
      appMonitorConfiguration: map['appMonitorConfiguration'] == null ? null : ((AppMonitorAppMonitorConfiguration.fromMap((map['appMonitorConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      appMonitorId: map['appMonitorId'] == null ? null : ((map['appMonitorId'] as String).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      customEvents: map['customEvents'] == null ? null : ((AppMonitorCustomEvents.fromMap((map['customEvents']! as Map).cast<String, dynamic>())).input()).input(),
      cwLogEnabled: map['cwLogEnabled'] == null ? null : ((map['cwLogEnabled'] as bool).input()).input(),
      cwLogGroup: map['cwLogGroup'] == null ? null : ((map['cwLogGroup'] as String).input()).input(),
      domain: map['domain'] == null ? null : ((map['domain'] as String).input()).input(),
      domainLists: map['domainLists'] == null ? null : (((map['domainLists'] as List).cast<String>()).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

