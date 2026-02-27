import 'package:pulumi/pulumi.dart';
import '../uptime_check_config_content_matcher/uptime_check_config_content_matcher.dart';
import '../uptime_check_config_http_check/uptime_check_config_http_check.dart';
import '../uptime_check_config_monitored_resource/uptime_check_config_monitored_resource.dart';
import '../uptime_check_config_resource_group/uptime_check_config_resource_group.dart';
import '../uptime_check_config_synthetic_monitor/uptime_check_config_synthetic_monitor.dart';
import '../uptime_check_config_tcp_check/uptime_check_config_tcp_check.dart';
import 'uptime_check_config_args.dart';

/// This message configures which resources and services to monitor for availability.
///
///
/// To get more information about UptimeCheckConfig, see:
///
/// * [API documentation](https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.uptimeCheckConfigs)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/monitoring/uptime-checks/)
///
///
///
/// ## Example Usage
///
/// ### Uptime Check Config Http
///
///
///
/// ### Uptime Check Config Http Password Wo
///
///
///
/// ### Uptime Check Config Status Code
///
///
///
/// ### Uptime Check Config Https
///
///
///
/// ### Uptime Check Tcp
///
///
///
/// ### Uptime Check Config Synthetic Monitor
///
///
///
///
/// ## Import
///
/// UptimeCheckConfig can be imported using any of these accepted formats:
///
/// * `{{project}}/{{name}}`
///
/// * `{{project}} {{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, UptimeCheckConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:monitoring/uptimeCheckConfig:UptimeCheckConfig default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:monitoring/uptimeCheckConfig:UptimeCheckConfig default "{{project}} {{name}}"
/// ```
///
/// ```sh
/// $ pulumi import gcp:monitoring/uptimeCheckConfig:UptimeCheckConfig default {{name}}
/// ```
class UptimeCheckConfig extends CustomResource {
  /// The checker type to use for the check. If the monitored resource type is `servicedirectory_service`, `checker_type` must be set to `VPC_CHECKERS`.
  /// Possible values are: `STATIC_IP_CHECKERS`, `VPC_CHECKERS`.
  late final Output<String> checkerType;

  /// The expected content on the page the check is run against. Currently, only the first entry in the list is supported, and other entries will be ignored. The server will look for an exact match of the string in the page response's content. This field is optional and should only be specified if a content match is required.
  /// Structure is documented below.
  late final Output<List<UptimeCheckConfigContentMatcher>?> contentMatchers;

  /// A human-friendly name for the uptime check configuration. The display name should be unique within a Stackdriver Workspace in order to make it easier to identify; however, uniqueness is not enforced.
  late final Output<String> displayName;

  /// Contains information needed to make an HTTP or HTTPS check.
  /// Structure is documented below.
  late final Output<UptimeCheckConfigHttpCheck?> httpCheck;

  /// Specifies whether to log the results of failed probes to Cloud Logging.
  late final Output<bool?> logCheckFailures;

  /// The [monitored resource]
  /// (https://cloud.google.com/monitoring/api/resources) associated with the
  /// configuration. The following monitored resource types are supported for
  /// uptime checks:
  late final Output<UptimeCheckConfigMonitoredResource?> monitoredResource;

  /// A unique resource name for this UptimeCheckConfig. The format is `projects/[PROJECT_ID]/uptimeCheckConfigs/[UPTIME_CHECK_ID]`.
  late final Output<String> name;

  /// How often, in seconds, the uptime check is performed. Currently, the only supported values are 60s (1 minute), 300s (5 minutes), 600s (10 minutes), and 900s (15 minutes). Optional, defaults to 300s.
  late final Output<String?> period;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The group resource associated with the configuration.
  /// Structure is documented below.
  late final Output<UptimeCheckConfigResourceGroup?> resourceGroup;

  /// The list of regions from which the check will be run. Some regions contain one location, and others contain more than one. If this field is specified, enough regions to include a minimum of 3 locations must be provided, or an error message is returned. Not specifying this field will result in uptime checks running from all regions.
  late final Output<List<String>?> selectedRegions;

  /// A Synthetic Monitor deployed to a Cloud Functions V2 instance.
  /// Structure is documented below.
  late final Output<UptimeCheckConfigSyntheticMonitor?> syntheticMonitor;

  /// Contains information needed to make a TCP check.
  /// Structure is documented below.
  late final Output<UptimeCheckConfigTcpCheck?> tcpCheck;

  /// The maximum amount of time to wait for the request to complete (must be between 1 and 60 seconds). See the accepted formats
  late final Output<String> timeout;

  /// The id of the uptime check
  late final Output<String> uptimeCheckId;

  /// User-supplied key/value data to be used for organizing and identifying the `UptimeCheckConfig` objects. The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter.
  late final Output<Map<String, String>?> userLabels;

  UptimeCheckConfig(
    String name, {
    UptimeCheckConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:monitoring/uptimeCheckConfig:UptimeCheckConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.checkerType = registerOutput<String>('checkerType');
    this.contentMatchers =
        registerOutput<List<UptimeCheckConfigContentMatcher>?>(
            'contentMatchers');
    this.displayName = registerOutput<String>('displayName');
    this.httpCheck = registerOutput<UptimeCheckConfigHttpCheck?>('httpCheck');
    this.logCheckFailures = registerOutput<bool?>('logCheckFailures');
    this.monitoredResource =
        registerOutput<UptimeCheckConfigMonitoredResource?>(
            'monitoredResource');
    this.name = registerOutput<String>('name');
    this.period = registerOutput<String?>('period');
    this.project = registerOutput<String>('project');
    this.resourceGroup =
        registerOutput<UptimeCheckConfigResourceGroup?>('resourceGroup');
    this.selectedRegions = registerOutput<List<String>?>('selectedRegions');
    this.syntheticMonitor =
        registerOutput<UptimeCheckConfigSyntheticMonitor?>('syntheticMonitor');
    this.tcpCheck = registerOutput<UptimeCheckConfigTcpCheck?>('tcpCheck');
    this.timeout = registerOutput<String>('timeout');
    this.uptimeCheckId = registerOutput<String>('uptimeCheckId');
    this.userLabels = registerOutput<Map<String, String>?>('userLabels');
  }
}
