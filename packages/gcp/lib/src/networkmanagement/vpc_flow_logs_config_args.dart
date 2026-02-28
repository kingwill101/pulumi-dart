// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkmanagement_vpc_flow_logs_config_vpc_flow_logs_config_args_doc}
/// The set of arguments for VpcFlowLogsConfig.
/// {@endtemplate}
/// {@macro pulumi_networkmanagement_vpc_flow_logs_config_vpc_flow_logs_config_args_doc}
class VpcFlowLogsConfigArgs {
  /// Optional. The aggregation interval for the logs. Default value is
  /// INTERVAL_5_SEC.   Possible values:  AGGREGATION_INTERVAL_UNSPECIFIED INTERVAL_5_SEC INTERVAL_30_SEC INTERVAL_1_MIN INTERVAL_5_MIN INTERVAL_10_MIN INTERVAL_15_MIN
  final pulumi.Input<String>? aggregationInterval;

  /// Optional. The user-supplied description of the VPC Flow Logs configuration. Maximum
  /// of 512 characters.
  final pulumi.Input<String>? description;

  /// Optional. Export filter used to define which VPC Flow Logs should be logged.
  final pulumi.Input<String>? filterExpr;

  /// Optional. The value of the field must be in (0, 1]. The sampling rate
  /// of VPC Flow Logs where 1.0 means all collected logs are reported. Setting the
  /// sampling rate to 0.0 is not allowed. If you want to disable VPC Flow Logs, use
  /// the state field instead. Default value is 1.0.
  final pulumi.Input<double>? flowSampling;

  /// Traffic will be logged from the Interconnect Attachment. Format: projects/{project_id}/regions/{region}/interconnectAttachments/{name}
  final pulumi.Input<String>? interconnectAttachment;

  /// Optional. Resource labels to represent user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. It identifies the resource
  /// within its parent collection as described in https://google.aip.dev/122. See documentation
  /// for resource type `networkmanagement.googleapis.com/VpcFlowLogsConfig`.
  final pulumi.Input<String> location;

  /// Optional. Configures whether all, none or a subset of metadata fields
  /// should be added to the reported VPC flow logs. Default value is INCLUDE_ALL_METADATA.
  /// Possible values:  METADATA_UNSPECIFIED INCLUDE_ALL_METADATA EXCLUDE_ALL_METADATA CUSTOM_METADATA
  final pulumi.Input<String>? metadata;

  /// Optional. Custom metadata fields to include in the reported VPC flow
  /// logs. Can only be specified if \"metadata\" was set to CUSTOM_METADATA.
  final pulumi.Input<List<String>>? metadataFields;

  /// Traffic will be logged from VMs, VPN tunnels and Interconnect Attachments within the network. Format: projects/{project_id}/global/networks/{name}
  final pulumi.Input<String>? network;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Optional. The state of the VPC Flow Log configuration. Default value
  /// is ENABLED. When creating a new configuration, it must be enabled.
  /// Possible values: STATE_UNSPECIFIED ENABLED DISABLED
  final pulumi.Input<String>? state;

  /// Traffic will be logged from VMs within the subnetwork. Format: projects/{project_id}/regions/{region}/subnetworks/{name}
  final pulumi.Input<String>? subnet;

  /// Required. ID of the `VpcFlowLogsConfig`.
  final pulumi.Input<String> vpcFlowLogsConfigId;

  /// Traffic will be logged from the VPN Tunnel. Format: projects/{project_id}/regions/{region}/vpnTunnels/{name}
  final pulumi.Input<String>? vpnTunnel;

  /// Creates a new [VpcFlowLogsConfigArgs].
  /// [aggregationInterval] Optional. The aggregation interval for the logs. Default value is
  /// [description] Optional. The user-supplied description of the VPC Flow Logs configuration. Maximum
  /// [filterExpr] Optional. Export filter used to define which VPC Flow Logs should be logged.
  /// [flowSampling] Optional. The value of the field must be in (0, 1]. The sampling rate
  /// [interconnectAttachment] Traffic will be logged from the Interconnect Attachment. Format: projects/{project_id}/regions/{region}/interconnectAttachments/{name}
  /// [labels] Optional. Resource labels to represent user-provided metadata.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource
  /// [metadata] Optional. Configures whether all, none or a subset of metadata fields
  /// [metadataFields] Optional. Custom metadata fields to include in the reported VPC flow
  /// [network] Traffic will be logged from VMs, VPN tunnels and Interconnect Attachments within the network. Format: projects/{project_id}/global/networks/{name}
  /// [project] The ID of the project in which the resource belongs.
  /// [state] Optional. The state of the VPC Flow Log configuration. Default value
  /// [subnet] Traffic will be logged from VMs within the subnetwork. Format: projects/{project_id}/regions/{region}/subnetworks/{name}
  /// [vpcFlowLogsConfigId] Required. ID of the `VpcFlowLogsConfig`.
  /// [vpnTunnel] Traffic will be logged from the VPN Tunnel. Format: projects/{project_id}/regions/{region}/vpnTunnels/{name}
  VpcFlowLogsConfigArgs({
    String? aggregationInterval,
    String? description,
    String? filterExpr,
    double? flowSampling,
    String? interconnectAttachment,
    Map<String, String>? labels,
    required String location,
    String? metadata,
    List<String>? metadataFields,
    String? network,
    String? project,
    String? state,
    String? subnet,
    required String vpcFlowLogsConfigId,
    String? vpnTunnel,
  })  : aggregationInterval =
            pulumi.Input.asOptionalInput<String>(aggregationInterval),
        description = pulumi.Input.asOptionalInput<String>(description),
        filterExpr = pulumi.Input.asOptionalInput<String>(filterExpr),
        flowSampling = pulumi.Input.asOptionalInput<double>(flowSampling),
        interconnectAttachment =
            pulumi.Input.asOptionalInput<String>(interconnectAttachment),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asInput<String>(location),
        metadata = pulumi.Input.asOptionalInput<String>(metadata),
        metadataFields =
            pulumi.Input.asOptionalInput<List<String>>(metadataFields),
        network = pulumi.Input.asOptionalInput<String>(network),
        project = pulumi.Input.asOptionalInput<String>(project),
        state = pulumi.Input.asOptionalInput<String>(state),
        subnet = pulumi.Input.asOptionalInput<String>(subnet),
        vpcFlowLogsConfigId = pulumi.Input.asInput<String>(vpcFlowLogsConfigId),
        vpnTunnel = pulumi.Input.asOptionalInput<String>(vpnTunnel);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aggregationIntervalValue = aggregationInterval;
    if (aggregationIntervalValue != null) {
      map['aggregationInterval'] = aggregationIntervalValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final filterExprValue = filterExpr;
    if (filterExprValue != null) {
      map['filterExpr'] = filterExprValue;
    }
    final flowSamplingValue = flowSampling;
    if (flowSamplingValue != null) {
      map['flowSampling'] = flowSamplingValue;
    }
    final interconnectAttachmentValue = interconnectAttachment;
    if (interconnectAttachmentValue != null) {
      map['interconnectAttachment'] = interconnectAttachmentValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = metadataValue;
    }
    final metadataFieldsValue = metadataFields;
    if (metadataFieldsValue != null) {
      map['metadataFields'] = metadataFieldsValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    final subnetValue = subnet;
    if (subnetValue != null) {
      map['subnet'] = subnetValue;
    }
    map['vpcFlowLogsConfigId'] = vpcFlowLogsConfigId;
    final vpnTunnelValue = vpnTunnel;
    if (vpnTunnelValue != null) {
      map['vpnTunnel'] = vpnTunnelValue;
    }
    return map;
  }

  factory VpcFlowLogsConfigArgs.fromMap(Map<String, dynamic> map) {
    return VpcFlowLogsConfigArgs(
      aggregationInterval: map['aggregationInterval'] == null
          ? null
          : map['aggregationInterval'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      filterExpr:
          map['filterExpr'] == null ? null : map['filterExpr'] as String,
      flowSampling:
          map['flowSampling'] == null ? null : map['flowSampling'] as double,
      interconnectAttachment: map['interconnectAttachment'] == null
          ? null
          : map['interconnectAttachment'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      metadata: map['metadata'] == null ? null : map['metadata'] as String,
      metadataFields: map['metadataFields'] == null
          ? null
          : (map['metadataFields'] as List).cast<String>(),
      network: map['network'] == null ? null : map['network'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      subnet: map['subnet'] == null ? null : map['subnet'] as String,
      vpcFlowLogsConfigId: map['vpcFlowLogsConfigId'] as String,
      vpnTunnel: map['vpnTunnel'] == null ? null : map['vpnTunnel'] as String,
    );
  }
}
