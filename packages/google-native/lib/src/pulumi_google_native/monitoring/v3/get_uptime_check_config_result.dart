// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'content_matcher_response.dart';
import 'http_check_response.dart';
import 'internal_checker_response.dart';
import 'monitored_resource_response2.dart';
import 'resource_group_response.dart';
import 'synthetic_monitor_target_response.dart';
import 'tcp_check_response.dart';

/// Result data returned by getUptimeCheckConfig.
class GetUptimeCheckConfigResult {
  /// The type of checkers to use to execute the Uptime check.
  final String checkerType;

  /// The content that is expected to appear in the data returned by the target server against which the check is run. Currently, only the first entry in the content_matchers list is supported, and additional entries will be ignored. This field is optional and should only be specified if a content match is required as part of the/ Uptime check.
  final List<ContentMatcherResponse> contentMatchers;

  /// A human-friendly name for the Uptime check configuration. The display name should be unique within a Cloud Monitoring Workspace in order to make it easier to identify; however, uniqueness is not enforced. Required.
  final String displayName;

  /// Contains information needed to make an HTTP or HTTPS check.
  final HttpCheckResponse httpCheck;

  /// The internal checkers that this check will egress from. If is_internal is true and this list is empty, the check will egress from all the InternalCheckers configured for the project that owns this UptimeCheckConfig.
  final List<InternalCheckerResponse> internalCheckers;

  /// If this is true, then checks are made only from the 'internal_checkers'. If it is false, then checks are made only from the 'selected_regions'. It is an error to provide 'selected_regions' when is_internal is true, or to provide 'internal_checkers' when is_internal is false.
  final bool isInternal;

  /// The monitored resource (https://cloud.google.com/monitoring/api/resources) associated with the configuration. The following monitored resource types are valid for this field: uptime_url, gce_instance, gae_app, aws_ec2_instance, aws_elb_load_balancer k8s_service servicedirectory_service cloud_run_revision
  final MonitoredResourceResponse2 monitoredResource;

  /// Identifier. A unique resource name for this Uptime check configuration. The format is: projects/[PROJECT_ID_OR_NUMBER]/uptimeCheckConfigs/[UPTIME_CHECK_ID] [PROJECT_ID_OR_NUMBER] is the Workspace host project associated with the Uptime check.This field should be omitted when creating the Uptime check configuration; on create, the resource name is assigned by the server and included in the response.
  final String name;

  /// How often, in seconds, the Uptime check is performed. Currently, the only supported values are 60s (1 minute), 300s (5 minutes), 600s (10 minutes), and 900s (15 minutes). Optional, defaults to 60s.
  final String period;

  /// The group resource associated with the configuration.
  final ResourceGroupResponse resourceGroup;

  /// The list of regions from which the check will be run. Some regions contain one location, and others contain more than one. If this field is specified, enough regions must be provided to include a minimum of 3 locations. Not specifying this field will result in Uptime checks running from all available regions.
  final List<String> selectedRegions;

  /// Specifies a Synthetic Monitor to invoke.
  final SyntheticMonitorTargetResponse syntheticMonitor;

  /// Contains information needed to make a TCP check.
  final TcpCheckResponse tcpCheck;

  /// The maximum amount of time to wait for the request to complete (must be between 1 and 60 seconds). Required.
  final String timeout;

  /// User-supplied key/value data to be used for organizing and identifying the UptimeCheckConfig objects.The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter.
  final Map<String, String> userLabels;

  GetUptimeCheckConfigResult({
    required this.checkerType,
    required this.contentMatchers,
    required this.displayName,
    required this.httpCheck,
    required this.internalCheckers,
    required this.isInternal,
    required this.monitoredResource,
    required this.name,
    required this.period,
    required this.resourceGroup,
    required this.selectedRegions,
    required this.syntheticMonitor,
    required this.tcpCheck,
    required this.timeout,
    required this.userLabels,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['checkerType'] = checkerType;
    map['contentMatchers'] =
        Input.encodeList<ContentMatcherResponse, Map<String, dynamic>>(
            contentMatchers, (value) => value.toMap());
    map['displayName'] = displayName;
    map['httpCheck'] = httpCheck.toMap();
    map['internalCheckers'] =
        Input.encodeList<InternalCheckerResponse, Map<String, dynamic>>(
            internalCheckers, (value) => value.toMap());
    map['isInternal'] = isInternal;
    map['monitoredResource'] = monitoredResource.toMap();
    map['name'] = name;
    map['period'] = period;
    map['resourceGroup'] = resourceGroup.toMap();
    map['selectedRegions'] = selectedRegions;
    map['syntheticMonitor'] = syntheticMonitor.toMap();
    map['tcpCheck'] = tcpCheck.toMap();
    map['timeout'] = timeout;
    map['userLabels'] = userLabels;
    return map;
  }

  factory GetUptimeCheckConfigResult.fromMap(Map<String, dynamic> map) {
    return GetUptimeCheckConfigResult(
      checkerType: map['checkerType'] as String,
      contentMatchers: Input.decodeList<ContentMatcherResponse>(
          map['contentMatchers'],
          (value) => ContentMatcherResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      displayName: map['displayName'] as String,
      httpCheck: HttpCheckResponse.fromMap(
          (map['httpCheck'] as Map).cast<String, dynamic>()),
      internalCheckers: Input.decodeList<InternalCheckerResponse>(
          map['internalCheckers'],
          (value) => InternalCheckerResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      isInternal: map['isInternal'] as bool,
      monitoredResource: MonitoredResourceResponse2.fromMap(
          (map['monitoredResource'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      period: map['period'] as String,
      resourceGroup: ResourceGroupResponse.fromMap(
          (map['resourceGroup'] as Map).cast<String, dynamic>()),
      selectedRegions: (map['selectedRegions'] as List).cast<String>(),
      syntheticMonitor: SyntheticMonitorTargetResponse.fromMap(
          (map['syntheticMonitor'] as Map).cast<String, dynamic>()),
      tcpCheck: TcpCheckResponse.fromMap(
          (map['tcpCheck'] as Map).cast<String, dynamic>()),
      timeout: map['timeout'] as String,
      userLabels: (map['userLabels'] as Map).cast<String, String>(),
    );
  }
}
