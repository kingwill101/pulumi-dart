// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for OrganizationVpcFlowLogsConfig.
class OrganizationVpcFlowLogsConfigArgs {
  /// Optional. The aggregation interval for the logs. Default value is
  /// INTERVAL_5_SEC.   Possible values: INTERVAL_5_SEC INTERVAL_30_SEC INTERVAL_1_MIN INTERVAL_5_MIN INTERVAL_10_MIN INTERVAL_15_MIN
  final pulumi.Input<String>? aggregationInterval;

  /// Determines whether to include cross project annotations in the logs.
  /// This field is available only for organization configurations. If not
  /// specified in org configs will be set to CROSS_PROJECT_METADATA_ENABLED.
  /// Possible values:
  /// CROSS_PROJECT_METADATA_ENABLED
  /// CROSS_PROJECT_METADATA_DISABLED
  /// Possible values are: `CROSS_PROJECT_METADATA_ENABLED`, `CROSS_PROJECT_METADATA_DISABLED`.
  final pulumi.Input<String>? crossProjectMetadata;

  /// Optional. The user-supplied description of the VPC Flow Logs configuration. Maximum
  /// of 512 characters.
  final pulumi.Input<String>? description;

  /// Optional. Export filter used to define which VPC Flow Logs should be logged.
  final pulumi.Input<String>? filterExpr;

  /// Optional. The value of the field must be in (0, 1]. The sampling rate
  /// of VPC Flow Logs where 1.0 means all collected logs are reported. Setting the
  /// sampling rate to 0.0 is not allowed. If you want to disable VPC Flow Logs, use
  /// the state field instead. Default value is 1.0
  final pulumi.Input<double>? flowSampling;

  /// Optional. Resource labels to represent the user-provided metadata.
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

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> organization;

  /// Optional. The state of the VPC Flow Log configuration. Default value
  /// is ENABLED. When creating a new configuration, it must be enabled.
  /// Possible values: ENABLED DISABLED
  final pulumi.Input<String>? state;

  /// Required. ID of the `VpcFlowLogsConfig`.
  final pulumi.Input<String> vpcFlowLogsConfigId;

  OrganizationVpcFlowLogsConfigArgs({
    this.aggregationInterval,
    this.crossProjectMetadata,
    this.description,
    this.filterExpr,
    this.flowSampling,
    this.labels,
    required this.location,
    this.metadata,
    this.metadataFields,
    required this.organization,
    this.state,
    required this.vpcFlowLogsConfigId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aggregationIntervalValue = aggregationInterval;
    if (aggregationIntervalValue != null) {
      map['aggregationInterval'] = aggregationIntervalValue;
    }
    final crossProjectMetadataValue = crossProjectMetadata;
    if (crossProjectMetadataValue != null) {
      map['crossProjectMetadata'] = crossProjectMetadataValue;
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
    map['organization'] = organization;
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    map['vpcFlowLogsConfigId'] = vpcFlowLogsConfigId;
    return map;
  }

  factory OrganizationVpcFlowLogsConfigArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationVpcFlowLogsConfigArgs(
      aggregationInterval:
          pulumi.Input.asOptionalInput<String>(map['aggregationInterval']),
      crossProjectMetadata:
          pulumi.Input.asOptionalInput<String>(map['crossProjectMetadata']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      filterExpr: pulumi.Input.asOptionalInput<String>(map['filterExpr']),
      flowSampling: pulumi.Input.asOptionalInput<double>(map['flowSampling']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      metadata: pulumi.Input.asOptionalInput<String>(map['metadata']),
      metadataFields:
          pulumi.Input.asOptionalInput<List<String>>(map['metadataFields']),
      organization: pulumi.Input.asInput<String>(map['organization']),
      state: pulumi.Input.asOptionalInput<String>(map['state']),
      vpcFlowLogsConfigId:
          pulumi.Input.asInput<String>(map['vpcFlowLogsConfigId']),
    );
  }
}
