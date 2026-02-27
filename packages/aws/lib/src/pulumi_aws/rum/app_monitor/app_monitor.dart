import 'package:pulumi/pulumi.dart';
import '../app_monitor_app_monitor_configuration/app_monitor_app_monitor_configuration.dart';
import '../app_monitor_custom_events/app_monitor_custom_events.dart';
import 'app_monitor_args.dart';

/// Provides a CloudWatch RUM App Monitor resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Cloudwatch RUM App Monitor using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:rum/appMonitor:AppMonitor example example
/// ```
class AppMonitor extends CustomResource {
  /// configuration data for the app monitor. See app_monitor_configuration below.
  late final Output<AppMonitorAppMonitorConfiguration> appMonitorConfiguration;

  /// The unique ID of the app monitor. Useful for JS templates.
  late final Output<String> appMonitorId;

  /// The Amazon Resource Name (ARN) specifying the app monitor.
  late final Output<String> arn;

  /// Specifies whether this app monitor allows the web client to define and send custom events. If you omit this parameter, custom events are `DISABLED`. See custom_events below.
  late final Output<AppMonitorCustomEvents> customEvents;

  /// Data collected by RUM is kept by RUM for 30 days and then deleted. This parameter specifies whether RUM sends a copy of this telemetry data to Amazon CloudWatch Logs in your account. This enables you to keep the telemetry data for more than 30 days, but it does incur Amazon CloudWatch Logs charges. Default value is `false`.
  late final Output<bool?> cwLogEnabled;

  /// The name of the log group where the copies are stored.
  late final Output<String> cwLogGroup;
  late final Output<String?> domain;
  late final Output<List<String>?> domainLists;

  /// The name of the log stream.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  AppMonitor(
    String name, {
    AppMonitorArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:rum/appMonitor:AppMonitor',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.appMonitorConfiguration =
        registerOutput<AppMonitorAppMonitorConfiguration>(
            'appMonitorConfiguration');
    this.appMonitorId = registerOutput<String>('appMonitorId');
    this.arn = registerOutput<String>('arn');
    this.customEvents = registerOutput<AppMonitorCustomEvents>('customEvents');
    this.cwLogEnabled = registerOutput<bool?>('cwLogEnabled');
    this.cwLogGroup = registerOutput<String>('cwLogGroup');
    this.domain = registerOutput<String?>('domain');
    this.domainLists = registerOutput<List<String>?>('domainLists');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
