import 'package:pulumi/pulumi.dart';
import 'content_matcher_response.dart';
import 'http_check_response.dart';
import 'internal_checker_response.dart';
import 'monitored_resource_response2.dart';
import 'resource_group_response.dart';
import 'synthetic_monitor_target_response.dart';
import 'tcp_check_response.dart';
import 'uptime_check_config_args.dart';

/// Creates a new Uptime check configuration.
class UptimeCheckConfig extends CustomResource {
  /// The type of checkers to use to execute the Uptime check.
  late final Output<String> checkerType;

  /// The content that is expected to appear in the data returned by the target server against which the check is run. Currently, only the first entry in the content_matchers list is supported, and additional entries will be ignored. This field is optional and should only be specified if a content match is required as part of the/ Uptime check.
  late final Output<List<ContentMatcherResponse>> contentMatchers;

  /// A human-friendly name for the Uptime check configuration. The display name should be unique within a Cloud Monitoring Workspace in order to make it easier to identify; however, uniqueness is not enforced. Required.
  late final Output<String> displayName;

  /// Contains information needed to make an HTTP or HTTPS check.
  late final Output<HttpCheckResponse> httpCheck;

  /// The internal checkers that this check will egress from. If is_internal is true and this list is empty, the check will egress from all the InternalCheckers configured for the project that owns this UptimeCheckConfig.
  late final Output<List<InternalCheckerResponse>> internalCheckers;

  /// If this is true, then checks are made only from the 'internal_checkers'. If it is false, then checks are made only from the 'selected_regions'. It is an error to provide 'selected_regions' when is_internal is true, or to provide 'internal_checkers' when is_internal is false.
  late final Output<bool> isInternal;

  /// The monitored resource (https://cloud.google.com/monitoring/api/resources) associated with the configuration. The following monitored resource types are valid for this field: uptime_url, gce_instance, gae_app, aws_ec2_instance, aws_elb_load_balancer k8s_service servicedirectory_service cloud_run_revision
  late final Output<MonitoredResourceResponse2> monitoredResource;

  /// Identifier. A unique resource name for this Uptime check configuration. The format is: projects/[PROJECT_ID_OR_NUMBER]/uptimeCheckConfigs/[UPTIME_CHECK_ID] [PROJECT_ID_OR_NUMBER] is the Workspace host project associated with the Uptime check.This field should be omitted when creating the Uptime check configuration; on create, the resource name is assigned by the server and included in the response.
  late final Output<String> name;

  /// How often, in seconds, the Uptime check is performed. Currently, the only supported values are 60s (1 minute), 300s (5 minutes), 600s (10 minutes), and 900s (15 minutes). Optional, defaults to 60s.
  late final Output<String> period;
  late final Output<String> project;

  /// The group resource associated with the configuration.
  late final Output<ResourceGroupResponse> resourceGroup;

  /// The list of regions from which the check will be run. Some regions contain one location, and others contain more than one. If this field is specified, enough regions must be provided to include a minimum of 3 locations. Not specifying this field will result in Uptime checks running from all available regions.
  late final Output<List<String>> selectedRegions;

  /// Specifies a Synthetic Monitor to invoke.
  late final Output<SyntheticMonitorTargetResponse> syntheticMonitor;

  /// Contains information needed to make a TCP check.
  late final Output<TcpCheckResponse> tcpCheck;

  /// The maximum amount of time to wait for the request to complete (must be between 1 and 60 seconds). Required.
  late final Output<String> timeout;

  /// User-supplied key/value data to be used for organizing and identifying the UptimeCheckConfig objects.The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter.
  late final Output<Map<String, String>> userLabels;

  UptimeCheckConfig(
    String name, {
    UptimeCheckConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:monitoring/v3:UptimeCheckConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.checkerType = Output.createUnknown<String>();
    this.contentMatchers = Output.createUnknown<List<ContentMatcherResponse>>();
    this.displayName = Output.createUnknown<String>();
    this.httpCheck = Output.createUnknown<HttpCheckResponse>();
    this.internalCheckers =
        Output.createUnknown<List<InternalCheckerResponse>>();
    this.isInternal = Output.createUnknown<bool>();
    this.monitoredResource = Output.createUnknown<MonitoredResourceResponse2>();
    this.name = Output.createUnknown<String>();
    this.period = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.resourceGroup = Output.createUnknown<ResourceGroupResponse>();
    this.selectedRegions = Output.createUnknown<List<String>>();
    this.syntheticMonitor =
        Output.createUnknown<SyntheticMonitorTargetResponse>();
    this.tcpCheck = Output.createUnknown<TcpCheckResponse>();
    this.timeout = Output.createUnknown<String>();
    this.userLabels = Output.createUnknown<Map<String, String>>();
  }
}
