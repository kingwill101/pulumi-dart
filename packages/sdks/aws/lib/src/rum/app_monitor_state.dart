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
    pulumi.Output<AppMonitorAppMonitorConfiguration>? appMonitorConfiguration,
    pulumi.Output<String>? appMonitorId,
    pulumi.Output<String>? arn,
    pulumi.Output<AppMonitorCustomEvents>? customEvents,
    pulumi.Output<bool>? cwLogEnabled,
    pulumi.Output<String>? cwLogGroup,
    pulumi.Output<String>? domain,
    pulumi.Output<List<String>>? domainLists,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      appMonitorConfiguration = pulumi.Input.asOptionalInput<AppMonitorAppMonitorConfiguration>(appMonitorConfiguration),
      appMonitorId = pulumi.Input.asOptionalInput<String>(appMonitorId),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      customEvents = pulumi.Input.asOptionalInput<AppMonitorCustomEvents>(customEvents),
      cwLogEnabled = pulumi.Input.asOptionalInput<bool>(cwLogEnabled),
      cwLogGroup = pulumi.Input.asOptionalInput<String>(cwLogGroup),
      domain = pulumi.Input.asOptionalInput<String>(domain),
      domainLists = pulumi.Input.asOptionalInput<List<String>>(domainLists),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      appMonitorConfiguration: map['appMonitorConfiguration'] == null ? null : pulumi.Output.create<AppMonitorAppMonitorConfiguration>(AppMonitorAppMonitorConfiguration.fromMap((map['appMonitorConfiguration'] as Map).cast<String, dynamic>())),
      appMonitorId: map['appMonitorId'] == null ? null : pulumi.Output.create<String>(map['appMonitorId'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      customEvents: map['customEvents'] == null ? null : pulumi.Output.create<AppMonitorCustomEvents>(AppMonitorCustomEvents.fromMap((map['customEvents'] as Map).cast<String, dynamic>())),
      cwLogEnabled: map['cwLogEnabled'] == null ? null : pulumi.Output.create<bool>(map['cwLogEnabled'] as bool),
      cwLogGroup: map['cwLogGroup'] == null ? null : pulumi.Output.create<String>(map['cwLogGroup'] as String),
      domain: map['domain'] == null ? null : pulumi.Output.create<String>(map['domain'] as String),
      domainLists: map['domainLists'] == null ? null : pulumi.Output.create<List<String>>((map['domainLists'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

