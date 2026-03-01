import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_matcher_response.dart';
import 'http_check_response.dart';
import 'internal_checker_response.dart';
import 'monitored_resource_response_monitoring_v3.dart';
import 'resource_group_response.dart';
import 'synthetic_monitor_target_response.dart';
import 'tcp_check_response.dart';
import 'uptime_check_config_args.dart';

/// Creates a new Uptime check configuration.
class UptimeCheckConfig extends pulumi.CustomResource {
  /// The type of checkers to use to execute the Uptime check.
  late final pulumi.Output<String> checkerType;

  /// The content that is expected to appear in the data returned by the target server against which the check is run. Currently, only the first entry in the content_matchers list is supported, and additional entries will be ignored. This field is optional and should only be specified if a content match is required as part of the/ Uptime check.
  late final pulumi.Output<List<ContentMatcherResponse>> contentMatchers;

  /// A human-friendly name for the Uptime check configuration. The display name should be unique within a Cloud Monitoring Workspace in order to make it easier to identify; however, uniqueness is not enforced. Required.
  late final pulumi.Output<String> displayName;

  /// Contains information needed to make an HTTP or HTTPS check.
  late final pulumi.Output<HttpCheckResponse> httpCheck;

  /// The internal checkers that this check will egress from. If is_internal is true and this list is empty, the check will egress from all the InternalCheckers configured for the project that owns this UptimeCheckConfig.
  late final pulumi.Output<List<InternalCheckerResponse>> internalCheckers;

  /// If this is true, then checks are made only from the 'internal_checkers'. If it is false, then checks are made only from the 'selected_regions'. It is an error to provide 'selected_regions' when is_internal is true, or to provide 'internal_checkers' when is_internal is false.
  late final pulumi.Output<bool> isInternal;

  /// The monitored resource (https://cloud.google.com/monitoring/api/resources) associated with the configuration. The following monitored resource types are valid for this field: uptime_url, gce_instance, gae_app, aws_ec2_instance, aws_elb_load_balancer k8s_service servicedirectory_service cloud_run_revision
  late final pulumi.Output<MonitoredResourceResponseMonitoringV3>
  monitoredResource;

  /// Identifier. A unique resource name for this Uptime check configuration. The format is: projects/[PROJECT_ID_OR_NUMBER]/uptimeCheckConfigs/[UPTIME_CHECK_ID] [PROJECT_ID_OR_NUMBER] is the Workspace host project associated with the Uptime check.This field should be omitted when creating the Uptime check configuration; on create, the resource name is assigned by the server and included in the response.
  late final pulumi.Output<String> name;

  /// How often, in seconds, the Uptime check is performed. Currently, the only supported values are 60s (1 minute), 300s (5 minutes), 600s (10 minutes), and 900s (15 minutes). Optional, defaults to 60s.
  late final pulumi.Output<String> period;
  late final pulumi.Output<String> project;

  /// The group resource associated with the configuration.
  late final pulumi.Output<ResourceGroupResponse> resourceGroup;

  /// The list of regions from which the check will be run. Some regions contain one location, and others contain more than one. If this field is specified, enough regions must be provided to include a minimum of 3 locations. Not specifying this field will result in Uptime checks running from all available regions.
  late final pulumi.Output<List<String>> selectedRegions;

  /// Specifies a Synthetic Monitor to invoke.
  late final pulumi.Output<SyntheticMonitorTargetResponse> syntheticMonitor;

  /// Contains information needed to make a TCP check.
  late final pulumi.Output<TcpCheckResponse> tcpCheck;

  /// The maximum amount of time to wait for the request to complete (must be between 1 and 60 seconds). Required.
  late final pulumi.Output<String> timeout;

  /// User-supplied key/value data to be used for organizing and identifying the UptimeCheckConfig objects.The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter.
  late final pulumi.Output<Map<String, String>> userLabels;

  /// Creates a new [UptimeCheckConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UptimeCheckConfig]. {@macro pulumi_monitoring_v3_uptime_check_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UptimeCheckConfig(
    String name, {
    UptimeCheckConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:monitoring/v3:UptimeCheckConfig',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.checkerType = registerOutput<String>('checkerType');
    this.contentMatchers = registerOutput<List<ContentMatcherResponse>>(
      'contentMatchers',
    );
    this.displayName = registerOutput<String>('displayName');
    this.httpCheck = registerOutput<HttpCheckResponse>('httpCheck');
    this.internalCheckers = registerOutput<List<InternalCheckerResponse>>(
      'internalCheckers',
    );
    this.isInternal = registerOutput<bool>('isInternal');
    this.monitoredResource =
        registerOutput<MonitoredResourceResponseMonitoringV3>(
          'monitoredResource',
        );
    this.name = registerOutput<String>('name');
    this.period = registerOutput<String>('period');
    this.project = registerOutput<String>('project');
    this.resourceGroup = registerOutput<ResourceGroupResponse>('resourceGroup');
    this.selectedRegions = registerOutput<List<String>>('selectedRegions');
    this.syntheticMonitor = registerOutput<SyntheticMonitorTargetResponse>(
      'syntheticMonitor',
    );
    this.tcpCheck = registerOutput<TcpCheckResponse>('tcpCheck');
    this.timeout = registerOutput<String>('timeout');
    this.userLabels = registerOutput<Map<String, String>>('userLabels');
  }
}
