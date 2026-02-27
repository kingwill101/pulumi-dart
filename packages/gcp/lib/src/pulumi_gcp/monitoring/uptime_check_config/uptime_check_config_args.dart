// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../uptime_check_config_content_matcher/uptime_check_config_content_matcher.dart';
import '../uptime_check_config_http_check/uptime_check_config_http_check.dart';
import '../uptime_check_config_monitored_resource/uptime_check_config_monitored_resource.dart';
import '../uptime_check_config_resource_group/uptime_check_config_resource_group.dart';
import '../uptime_check_config_synthetic_monitor/uptime_check_config_synthetic_monitor.dart';
import '../uptime_check_config_tcp_check/uptime_check_config_tcp_check.dart';

/// The set of arguments for UptimeCheckConfig.
class UptimeCheckConfigArgs {
  /// The checker type to use for the check. If the monitored resource type is `servicedirectory_service`, `checker_type` must be set to `VPC_CHECKERS`.
  /// Possible values are: `STATIC_IP_CHECKERS`, `VPC_CHECKERS`.
  final pulumi.Input<String>? checkerType;

  /// The expected content on the page the check is run against. Currently, only the first entry in the list is supported, and other entries will be ignored. The server will look for an exact match of the string in the page response's content. This field is optional and should only be specified if a content match is required.
  /// Structure is documented below.
  final pulumi.Input<List<UptimeCheckConfigContentMatcher>>? contentMatchers;

  /// A human-friendly name for the uptime check configuration. The display name should be unique within a Stackdriver Workspace in order to make it easier to identify; however, uniqueness is not enforced.
  final pulumi.Input<String> displayName;

  /// Contains information needed to make an HTTP or HTTPS check.
  /// Structure is documented below.
  final pulumi.Input<UptimeCheckConfigHttpCheck>? httpCheck;

  /// Specifies whether to log the results of failed probes to Cloud Logging.
  final pulumi.Input<bool>? logCheckFailures;

  /// The [monitored resource]
  /// (https://cloud.google.com/monitoring/api/resources) associated with the
  /// configuration. The following monitored resource types are supported for
  /// uptime checks:
  final pulumi.Input<UptimeCheckConfigMonitoredResource>? monitoredResource;

  /// How often, in seconds, the uptime check is performed. Currently, the only supported values are 60s (1 minute), 300s (5 minutes), 600s (10 minutes), and 900s (15 minutes). Optional, defaults to 300s.
  final pulumi.Input<String>? period;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The group resource associated with the configuration.
  /// Structure is documented below.
  final pulumi.Input<UptimeCheckConfigResourceGroup>? resourceGroup;

  /// The list of regions from which the check will be run. Some regions contain one location, and others contain more than one. If this field is specified, enough regions to include a minimum of 3 locations must be provided, or an error message is returned. Not specifying this field will result in uptime checks running from all regions.
  final pulumi.Input<List<String>>? selectedRegions;

  /// A Synthetic Monitor deployed to a Cloud Functions V2 instance.
  /// Structure is documented below.
  final pulumi.Input<UptimeCheckConfigSyntheticMonitor>? syntheticMonitor;

  /// Contains information needed to make a TCP check.
  /// Structure is documented below.
  final pulumi.Input<UptimeCheckConfigTcpCheck>? tcpCheck;

  /// The maximum amount of time to wait for the request to complete (must be between 1 and 60 seconds). See the accepted formats
  final pulumi.Input<String> timeout;

  /// User-supplied key/value data to be used for organizing and identifying the `UptimeCheckConfig` objects. The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter.
  final pulumi.Input<Map<String, String>>? userLabels;

  UptimeCheckConfigArgs({
    this.checkerType,
    this.contentMatchers,
    required this.displayName,
    this.httpCheck,
    this.logCheckFailures,
    this.monitoredResource,
    this.period,
    this.project,
    this.resourceGroup,
    this.selectedRegions,
    this.syntheticMonitor,
    this.tcpCheck,
    required this.timeout,
    this.userLabels,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final checkerTypeValue = checkerType;
    if (checkerTypeValue != null) {
      map['checkerType'] = checkerTypeValue;
    }
    final contentMatchersValue = contentMatchers;
    if (contentMatchersValue != null) {
      map['contentMatchers'] = pulumi.Input.mapOptionalInputValue<
              List<UptimeCheckConfigContentMatcher>,
              List<Map<String, dynamic>>>(
          contentMatchersValue,
          (value) => pulumi.Input.encodeList<UptimeCheckConfigContentMatcher,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['displayName'] = displayName;
    final httpCheckValue = httpCheck;
    if (httpCheckValue != null) {
      map['httpCheck'] = pulumi.Input.mapOptionalInputValue<
          UptimeCheckConfigHttpCheck,
          Map<String, dynamic>>(httpCheckValue, (value) => value.toMap());
    }
    final logCheckFailuresValue = logCheckFailures;
    if (logCheckFailuresValue != null) {
      map['logCheckFailures'] = logCheckFailuresValue;
    }
    final monitoredResourceValue = monitoredResource;
    if (monitoredResourceValue != null) {
      map['monitoredResource'] = pulumi.Input.mapOptionalInputValue<
              UptimeCheckConfigMonitoredResource, Map<String, dynamic>>(
          monitoredResourceValue, (value) => value.toMap());
    }
    final periodValue = period;
    if (periodValue != null) {
      map['period'] = periodValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final resourceGroupValue = resourceGroup;
    if (resourceGroupValue != null) {
      map['resourceGroup'] = pulumi.Input.mapOptionalInputValue<
          UptimeCheckConfigResourceGroup,
          Map<String, dynamic>>(resourceGroupValue, (value) => value.toMap());
    }
    final selectedRegionsValue = selectedRegions;
    if (selectedRegionsValue != null) {
      map['selectedRegions'] = selectedRegionsValue;
    }
    final syntheticMonitorValue = syntheticMonitor;
    if (syntheticMonitorValue != null) {
      map['syntheticMonitor'] = pulumi.Input.mapOptionalInputValue<
              UptimeCheckConfigSyntheticMonitor, Map<String, dynamic>>(
          syntheticMonitorValue, (value) => value.toMap());
    }
    final tcpCheckValue = tcpCheck;
    if (tcpCheckValue != null) {
      map['tcpCheck'] = pulumi.Input.mapOptionalInputValue<
          UptimeCheckConfigTcpCheck,
          Map<String, dynamic>>(tcpCheckValue, (value) => value.toMap());
    }
    map['timeout'] = timeout;
    final userLabelsValue = userLabels;
    if (userLabelsValue != null) {
      map['userLabels'] = userLabelsValue;
    }
    return map;
  }

  factory UptimeCheckConfigArgs.fromMap(Map<String, dynamic> map) {
    return UptimeCheckConfigArgs(
      checkerType: pulumi.Input.asOptionalInput<String>(map['checkerType']),
      contentMatchers:
          pulumi.Input.asOptionalInput<List<UptimeCheckConfigContentMatcher>>(
              map['contentMatchers']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      httpCheck: pulumi.Input.asOptionalInput<UptimeCheckConfigHttpCheck>(
          map['httpCheck']),
      logCheckFailures:
          pulumi.Input.asOptionalInput<bool>(map['logCheckFailures']),
      monitoredResource:
          pulumi.Input.asOptionalInput<UptimeCheckConfigMonitoredResource>(
              map['monitoredResource']),
      period: pulumi.Input.asOptionalInput<String>(map['period']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      resourceGroup:
          pulumi.Input.asOptionalInput<UptimeCheckConfigResourceGroup>(
              map['resourceGroup']),
      selectedRegions:
          pulumi.Input.asOptionalInput<List<String>>(map['selectedRegions']),
      syntheticMonitor:
          pulumi.Input.asOptionalInput<UptimeCheckConfigSyntheticMonitor>(
              map['syntheticMonitor']),
      tcpCheck: pulumi.Input.asOptionalInput<UptimeCheckConfigTcpCheck>(
          map['tcpCheck']),
      timeout: pulumi.Input.asInput<String>(map['timeout']),
      userLabels:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['userLabels']),
    );
  }
}
