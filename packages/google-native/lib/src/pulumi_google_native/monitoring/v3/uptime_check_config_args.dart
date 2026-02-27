// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'content_matcher.dart';
import 'http_check.dart';
import 'internal_checker.dart';
import 'monitored_resource2.dart';
import 'resource_group.dart';
import 'synthetic_monitor_target.dart';
import 'tcp_check.dart';
import 'uptime_check_config_checker_type.dart';
import 'uptime_check_config_selected_regions_item.dart';

/// The set of arguments for UptimeCheckConfig.
class UptimeCheckConfigArgs {
  /// The type of checkers to use to execute the Uptime check.
  final Input<UptimeCheckConfigCheckerType>? checkerType;

  /// The content that is expected to appear in the data returned by the target server against which the check is run. Currently, only the first entry in the content_matchers list is supported, and additional entries will be ignored. This field is optional and should only be specified if a content match is required as part of the/ Uptime check.
  final Input<List<ContentMatcher>>? contentMatchers;

  /// A human-friendly name for the Uptime check configuration. The display name should be unique within a Cloud Monitoring Workspace in order to make it easier to identify; however, uniqueness is not enforced. Required.
  final Input<String>? displayName;

  /// Contains information needed to make an HTTP or HTTPS check.
  final Input<HttpCheck>? httpCheck;

  /// The internal checkers that this check will egress from. If is_internal is true and this list is empty, the check will egress from all the InternalCheckers configured for the project that owns this UptimeCheckConfig.
  final Input<List<InternalChecker>>? internalCheckers;

  /// If this is true, then checks are made only from the 'internal_checkers'. If it is false, then checks are made only from the 'selected_regions'. It is an error to provide 'selected_regions' when is_internal is true, or to provide 'internal_checkers' when is_internal is false.
  final Input<bool>? isInternal;

  /// The monitored resource (https://cloud.google.com/monitoring/api/resources) associated with the configuration. The following monitored resource types are valid for this field: uptime_url, gce_instance, gae_app, aws_ec2_instance, aws_elb_load_balancer k8s_service servicedirectory_service cloud_run_revision
  final Input<MonitoredResource2>? monitoredResource;

  /// Identifier. A unique resource name for this Uptime check configuration. The format is: projects/[PROJECT_ID_OR_NUMBER]/uptimeCheckConfigs/[UPTIME_CHECK_ID] [PROJECT_ID_OR_NUMBER] is the Workspace host project associated with the Uptime check.This field should be omitted when creating the Uptime check configuration; on create, the resource name is assigned by the server and included in the response.
  final Input<String>? name;

  /// How often, in seconds, the Uptime check is performed. Currently, the only supported values are 60s (1 minute), 300s (5 minutes), 600s (10 minutes), and 900s (15 minutes). Optional, defaults to 60s.
  final Input<String>? period;
  final Input<String>? project;

  /// The group resource associated with the configuration.
  final Input<ResourceGroup>? resourceGroup;

  /// The list of regions from which the check will be run. Some regions contain one location, and others contain more than one. If this field is specified, enough regions must be provided to include a minimum of 3 locations. Not specifying this field will result in Uptime checks running from all available regions.
  final Input<List<UptimeCheckConfigSelectedRegionsItem>>? selectedRegions;

  /// Specifies a Synthetic Monitor to invoke.
  final Input<SyntheticMonitorTarget>? syntheticMonitor;

  /// Contains information needed to make a TCP check.
  final Input<TcpCheck>? tcpCheck;

  /// The maximum amount of time to wait for the request to complete (must be between 1 and 60 seconds). Required.
  final Input<String>? timeout;

  /// User-supplied key/value data to be used for organizing and identifying the UptimeCheckConfig objects.The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter.
  final Input<Map<String, String>>? userLabels;

  UptimeCheckConfigArgs({
    this.checkerType,
    this.contentMatchers,
    this.displayName,
    this.httpCheck,
    this.internalCheckers,
    this.isInternal,
    this.monitoredResource,
    this.name,
    this.period,
    this.project,
    this.resourceGroup,
    this.selectedRegions,
    this.syntheticMonitor,
    this.tcpCheck,
    this.timeout,
    this.userLabels,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final checkerTypeValue = checkerType;
    if (checkerTypeValue != null) {
      map['checkerType'] =
          Input.mapOptionalInputValue<UptimeCheckConfigCheckerType, String>(
              checkerTypeValue, (value) => value.value);
    }
    final contentMatchersValue = contentMatchers;
    if (contentMatchersValue != null) {
      map['contentMatchers'] = Input.mapOptionalInputValue<List<ContentMatcher>,
              List<Map<String, dynamic>>>(
          contentMatchersValue,
          (value) => Input.encodeList<ContentMatcher, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final httpCheckValue = httpCheck;
    if (httpCheckValue != null) {
      map['httpCheck'] =
          Input.mapOptionalInputValue<HttpCheck, Map<String, dynamic>>(
              httpCheckValue, (value) => value.toMap());
    }
    final internalCheckersValue = internalCheckers;
    if (internalCheckersValue != null) {
      map['internalCheckers'] = Input.mapOptionalInputValue<
              List<InternalChecker>, List<Map<String, dynamic>>>(
          internalCheckersValue,
          (value) => Input.encodeList<InternalChecker, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final isInternalValue = isInternal;
    if (isInternalValue != null) {
      map['isInternal'] = isInternalValue;
    }
    final monitoredResourceValue = monitoredResource;
    if (monitoredResourceValue != null) {
      map['monitoredResource'] =
          Input.mapOptionalInputValue<MonitoredResource2, Map<String, dynamic>>(
              monitoredResourceValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
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
      map['resourceGroup'] =
          Input.mapOptionalInputValue<ResourceGroup, Map<String, dynamic>>(
              resourceGroupValue, (value) => value.toMap());
    }
    final selectedRegionsValue = selectedRegions;
    if (selectedRegionsValue != null) {
      map['selectedRegions'] = Input.mapOptionalInputValue<
              List<UptimeCheckConfigSelectedRegionsItem>, List<String>>(
          selectedRegionsValue,
          (value) =>
              Input.encodeList<UptimeCheckConfigSelectedRegionsItem, String>(
                  value, (value) => value.value));
    }
    final syntheticMonitorValue = syntheticMonitor;
    if (syntheticMonitorValue != null) {
      map['syntheticMonitor'] = Input.mapOptionalInputValue<
              SyntheticMonitorTarget, Map<String, dynamic>>(
          syntheticMonitorValue, (value) => value.toMap());
    }
    final tcpCheckValue = tcpCheck;
    if (tcpCheckValue != null) {
      map['tcpCheck'] =
          Input.mapOptionalInputValue<TcpCheck, Map<String, dynamic>>(
              tcpCheckValue, (value) => value.toMap());
    }
    final timeoutValue = timeout;
    if (timeoutValue != null) {
      map['timeout'] = timeoutValue;
    }
    final userLabelsValue = userLabels;
    if (userLabelsValue != null) {
      map['userLabels'] = userLabelsValue;
    }
    return map;
  }

  factory UptimeCheckConfigArgs.fromMap(Map<String, dynamic> map) {
    return UptimeCheckConfigArgs(
      checkerType: Input.asOptionalInput<UptimeCheckConfigCheckerType>(
          map['checkerType']),
      contentMatchers:
          Input.asOptionalInput<List<ContentMatcher>>(map['contentMatchers']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      httpCheck: Input.asOptionalInput<HttpCheck>(map['httpCheck']),
      internalCheckers:
          Input.asOptionalInput<List<InternalChecker>>(map['internalCheckers']),
      isInternal: Input.asOptionalInput<bool>(map['isInternal']),
      monitoredResource:
          Input.asOptionalInput<MonitoredResource2>(map['monitoredResource']),
      name: Input.asOptionalInput<String>(map['name']),
      period: Input.asOptionalInput<String>(map['period']),
      project: Input.asOptionalInput<String>(map['project']),
      resourceGroup: Input.asOptionalInput<ResourceGroup>(map['resourceGroup']),
      selectedRegions:
          Input.asOptionalInput<List<UptimeCheckConfigSelectedRegionsItem>>(
              map['selectedRegions']),
      syntheticMonitor: Input.asOptionalInput<SyntheticMonitorTarget>(
          map['syntheticMonitor']),
      tcpCheck: Input.asOptionalInput<TcpCheck>(map['tcpCheck']),
      timeout: Input.asOptionalInput<String>(map['timeout']),
      userLabels: Input.asOptionalInput<Map<String, String>>(map['userLabels']),
    );
  }
}
