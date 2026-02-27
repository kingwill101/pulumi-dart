import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_flow_logs_config_args.dart';

/// VPC Flow Logs Config is a resource that lets you configure Flow Logs for Networks, Subnets, Interconnect attachments or VPN Tunnels.
///
///
///
/// ## Example Usage
///
/// ### Network Management Vpc Flow Logs Config Interconnect Basic
///
///
///
/// ### Network Management Vpc Flow Logs Config Vpn Basic
///
///
///
/// ### Network Management Vpc Flow Logs Config Network Basic
///
///
///
/// ### Network Management Vpc Flow Logs Config Subnet Basic
///
///
///
///
/// ## Import
///
/// VpcFlowLogsConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/vpcFlowLogsConfigs/{{vpc_flow_logs_config_id}}`
///
/// * `{{project}}/{{location}}/{{vpc_flow_logs_config_id}}`
///
/// * `{{location}}/{{vpc_flow_logs_config_id}}`
///
/// When using the `pulumi import` command, VpcFlowLogsConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkmanagement/vpcFlowLogsConfig:VpcFlowLogsConfig default projects/{{project}}/locations/{{location}}/vpcFlowLogsConfigs/{{vpc_flow_logs_config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkmanagement/vpcFlowLogsConfig:VpcFlowLogsConfig default {{project}}/{{location}}/{{vpc_flow_logs_config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkmanagement/vpcFlowLogsConfig:VpcFlowLogsConfig default {{location}}/{{vpc_flow_logs_config_id}}
/// ```
class VpcFlowLogsConfig extends pulumi.CustomResource {
  /// Optional. The aggregation interval for the logs. Default value is
  /// INTERVAL_5_SEC.   Possible values:  AGGREGATION_INTERVAL_UNSPECIFIED INTERVAL_5_SEC INTERVAL_30_SEC INTERVAL_1_MIN INTERVAL_5_MIN INTERVAL_10_MIN INTERVAL_15_MIN
  late final pulumi.Output<String> aggregationInterval;

  /// Output only. The time the config was created.
  late final pulumi.Output<String> createTime;

  /// Optional. The user-supplied description of the VPC Flow Logs configuration. Maximum
  /// of 512 characters.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Optional. Export filter used to define which VPC Flow Logs should be logged.
  late final pulumi.Output<String?> filterExpr;

  /// Optional. The value of the field must be in (0, 1]. The sampling rate
  /// of VPC Flow Logs where 1.0 means all collected logs are reported. Setting the
  /// sampling rate to 0.0 is not allowed. If you want to disable VPC Flow Logs, use
  /// the state field instead. Default value is 1.0.
  late final pulumi.Output<double> flowSampling;

  /// Traffic will be logged from the Interconnect Attachment. Format: projects/{project_id}/regions/{region}/interconnectAttachments/{name}
  late final pulumi.Output<String?> interconnectAttachment;

  /// Optional. Resource labels to represent user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource
  /// within its parent collection as described in https://google.aip.dev/122. See documentation
  /// for resource type `networkmanagement.googleapis.com/VpcFlowLogsConfig`.
  late final pulumi.Output<String> location;

  /// Optional. Configures whether all, none or a subset of metadata fields
  /// should be added to the reported VPC flow logs. Default value is INCLUDE_ALL_METADATA.
  /// Possible values:  METADATA_UNSPECIFIED INCLUDE_ALL_METADATA EXCLUDE_ALL_METADATA CUSTOM_METADATA
  late final pulumi.Output<String> metadata;

  /// Optional. Custom metadata fields to include in the reported VPC flow
  /// logs. Can only be specified if \"metadata\" was set to CUSTOM_METADATA.
  late final pulumi.Output<List<String>?> metadataFields;

  /// Identifier. Unique name of the configuration using the form:     `projects/{project_id}/locations/global/vpcFlowLogsConfigs/{vpc_flow_logs_config_id}`
  late final pulumi.Output<String> name;

  /// Traffic will be logged from VMs, VPN tunnels and Interconnect Attachments within the network. Format: projects/{project_id}/global/networks/{name}
  late final pulumi.Output<String?> network;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Optional. The state of the VPC Flow Log configuration. Default value
  /// is ENABLED. When creating a new configuration, it must be enabled.
  /// Possible values: STATE_UNSPECIFIED ENABLED DISABLED
  late final pulumi.Output<String> state;

  /// Traffic will be logged from VMs within the subnetwork. Format: projects/{project_id}/regions/{region}/subnetworks/{name}
  late final pulumi.Output<String?> subnet;

  /// Describes the state of the configured target resource for diagnostic
  /// purposes.
  /// Possible values:
  /// TARGET_RESOURCE_STATE_UNSPECIFIED
  /// TARGET_RESOURCE_EXISTS
  /// TARGET_RESOURCE_DOES_NOT_EXIST
  late final pulumi.Output<String> targetResourceState;

  /// Output only. The time the config was updated.
  late final pulumi.Output<String> updateTime;

  /// Required. ID of the `VpcFlowLogsConfig`.
  late final pulumi.Output<String> vpcFlowLogsConfigId;

  /// Traffic will be logged from the VPN Tunnel. Format: projects/{project_id}/regions/{region}/vpnTunnels/{name}
  late final pulumi.Output<String?> vpnTunnel;

  VpcFlowLogsConfig(
    String name, {
    VpcFlowLogsConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkmanagement/vpcFlowLogsConfig:VpcFlowLogsConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aggregationInterval = registerOutput<String>('aggregationInterval');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.filterExpr = registerOutput<String?>('filterExpr');
    this.flowSampling = registerOutput<double>('flowSampling');
    this.interconnectAttachment =
        registerOutput<String?>('interconnectAttachment');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.metadata = registerOutput<String>('metadata');
    this.metadataFields = registerOutput<List<String>?>('metadataFields');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String?>('network');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
    this.subnet = registerOutput<String?>('subnet');
    this.targetResourceState = registerOutput<String>('targetResourceState');
    this.updateTime = registerOutput<String>('updateTime');
    this.vpcFlowLogsConfigId = registerOutput<String>('vpcFlowLogsConfigId');
    this.vpnTunnel = registerOutput<String?>('vpnTunnel');
  }
}
