// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for VpcFlowLogsConfig.
class VpcFlowLogsConfigArgs {
  /// Optional. The aggregation interval for the logs. Default value is
  /// INTERVAL_5_SEC.   Possible values:  AGGREGATION_INTERVAL_UNSPECIFIED INTERVAL_5_SEC INTERVAL_30_SEC INTERVAL_1_MIN INTERVAL_5_MIN INTERVAL_10_MIN INTERVAL_15_MIN
  final Input<String>? aggregationInterval;

  /// Optional. The user-supplied description of the VPC Flow Logs configuration. Maximum
  /// of 512 characters.
  final Input<String>? description;

  /// Optional. Export filter used to define which VPC Flow Logs should be logged.
  final Input<String>? filterExpr;

  /// Optional. The value of the field must be in (0, 1]. The sampling rate
  /// of VPC Flow Logs where 1.0 means all collected logs are reported. Setting the
  /// sampling rate to 0.0 is not allowed. If you want to disable VPC Flow Logs, use
  /// the state field instead. Default value is 1.0.
  final Input<double>? flowSampling;

  /// Traffic will be logged from the Interconnect Attachment. Format: projects/{project_id}/regions/{region}/interconnectAttachments/{name}
  final Input<String>? interconnectAttachment;

  /// Optional. Resource labels to represent user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. It identifies the resource
  /// within its parent collection as described in https://google.aip.dev/122. See documentation
  /// for resource type `networkmanagement.googleapis.com/VpcFlowLogsConfig`.
  final Input<String> location;

  /// Optional. Configures whether all, none or a subset of metadata fields
  /// should be added to the reported VPC flow logs. Default value is INCLUDE_ALL_METADATA.
  /// Possible values:  METADATA_UNSPECIFIED INCLUDE_ALL_METADATA EXCLUDE_ALL_METADATA CUSTOM_METADATA
  final Input<String>? metadata;

  /// Optional. Custom metadata fields to include in the reported VPC flow
  /// logs. Can only be specified if \"metadata\" was set to CUSTOM_METADATA.
  final Input<List<String>>? metadataFields;

  /// Traffic will be logged from VMs, VPN tunnels and Interconnect Attachments within the network. Format: projects/{project_id}/global/networks/{name}
  final Input<String>? network;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Optional. The state of the VPC Flow Log configuration. Default value
  /// is ENABLED. When creating a new configuration, it must be enabled.
  /// Possible values: STATE_UNSPECIFIED ENABLED DISABLED
  final Input<String>? state;

  /// Traffic will be logged from VMs within the subnetwork. Format: projects/{project_id}/regions/{region}/subnetworks/{name}
  final Input<String>? subnet;

  /// Required. ID of the `VpcFlowLogsConfig`.
  final Input<String> vpcFlowLogsConfigId;

  /// Traffic will be logged from the VPN Tunnel. Format: projects/{project_id}/regions/{region}/vpnTunnels/{name}
  final Input<String>? vpnTunnel;

  VpcFlowLogsConfigArgs({
    this.aggregationInterval,
    this.description,
    this.filterExpr,
    this.flowSampling,
    this.interconnectAttachment,
    this.labels,
    required this.location,
    this.metadata,
    this.metadataFields,
    this.network,
    this.project,
    this.state,
    this.subnet,
    required this.vpcFlowLogsConfigId,
    this.vpnTunnel,
  });

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
      aggregationInterval:
          Input.asOptionalInput<String>(map['aggregationInterval']),
      description: Input.asOptionalInput<String>(map['description']),
      filterExpr: Input.asOptionalInput<String>(map['filterExpr']),
      flowSampling: Input.asOptionalInput<double>(map['flowSampling']),
      interconnectAttachment:
          Input.asOptionalInput<String>(map['interconnectAttachment']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      metadata: Input.asOptionalInput<String>(map['metadata']),
      metadataFields:
          Input.asOptionalInput<List<String>>(map['metadataFields']),
      network: Input.asOptionalInput<String>(map['network']),
      project: Input.asOptionalInput<String>(map['project']),
      state: Input.asOptionalInput<String>(map['state']),
      subnet: Input.asOptionalInput<String>(map['subnet']),
      vpcFlowLogsConfigId: Input.asInput<String>(map['vpcFlowLogsConfigId']),
      vpnTunnel: Input.asOptionalInput<String>(map['vpnTunnel']),
    );
  }
}
