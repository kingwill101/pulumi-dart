// ignore_for_file: unused_element, unnecessary_cast

/// The available logging options for this subnetwork.
class SubnetworkLogConfigResponseComputeV1 {
  /// Can only be specified if VPC flow logging for this subnetwork is enabled. Toggles the aggregation interval for collecting flow logs. Increasing the interval time will reduce the amount of generated flow logs for long lasting connections. Default is an interval of 5 seconds per connection.
  final String aggregationInterval;

  /// Whether to enable flow logging for this subnetwork. If this field is not explicitly set, it will not appear in get listings. If not set the default behavior is determined by the org policy, if there is no org policy specified, then it will default to disabled. Flow logging isn't supported if the subnet purpose field is set to REGIONAL_MANAGED_PROXY.
  final bool enable;

  /// Can only be specified if VPC flow logs for this subnetwork is enabled. The filter expression is used to define which VPC flow logs should be exported to Cloud Logging.
  final String filterExpr;

  /// Can only be specified if VPC flow logging for this subnetwork is enabled. The value of the field must be in [0, 1]. Set the sampling rate of VPC flow logs within the subnetwork where 1.0 means all collected logs are reported and 0.0 means no logs are reported. Default is 0.5 unless otherwise specified by the org policy, which means half of all collected logs are reported.
  final double flowSampling;

  /// Can only be specified if VPC flow logs for this subnetwork is enabled. Configures whether all, none or a subset of metadata fields should be added to the reported VPC flow logs. Default is EXCLUDE_ALL_METADATA.
  final String metadata;

  /// Can only be specified if VPC flow logs for this subnetwork is enabled and "metadata" was set to CUSTOM_METADATA.
  final List<String> metadataFields;

  /// Creates a new [SubnetworkLogConfigResponseComputeV1].
  /// [aggregationInterval] Can only be specified if VPC flow logging for this subnetwork is enabled. Toggles the aggregation interval for collecting flow logs. Increasing the interval time will reduce the amount of generated flow logs for long lasting connections. Default is an interval of 5 seconds per connection.
  /// [enable] Whether to enable flow logging for this subnetwork. If this field is not explicitly set, it will not appear in get listings. If not set the default behavior is determined by the org policy, if there is no org policy specified, then it will default to disabled. Flow logging isn't supported if the subnet purpose field is set to REGIONAL_MANAGED_PROXY.
  /// [filterExpr] Can only be specified if VPC flow logs for this subnetwork is enabled. The filter expression is used to define which VPC flow logs should be exported to Cloud Logging.
  /// [flowSampling] Can only be specified if VPC flow logging for this subnetwork is enabled. The value of the field must be in [0, 1]. Set the sampling rate of VPC flow logs within the subnetwork where 1.0 means all collected logs are reported and 0.0 means no logs are reported. Default is 0.5 unless otherwise specified by the org policy, which means half of all collected logs are reported.
  /// [metadata] Can only be specified if VPC flow logs for this subnetwork is enabled. Configures whether all, none or a subset of metadata fields should be added to the reported VPC flow logs. Default is EXCLUDE_ALL_METADATA.
  /// [metadataFields] Can only be specified if VPC flow logs for this subnetwork is enabled and "metadata" was set to CUSTOM_METADATA.
  SubnetworkLogConfigResponseComputeV1({
    required this.aggregationInterval,
    required this.enable,
    required this.filterExpr,
    required this.flowSampling,
    required this.metadata,
    required this.metadataFields,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['aggregationInterval'] = aggregationInterval;
    map['enable'] = enable;
    map['filterExpr'] = filterExpr;
    map['flowSampling'] = flowSampling;
    map['metadata'] = metadata;
    map['metadataFields'] = metadataFields;
    return map;
  }

  factory SubnetworkLogConfigResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return SubnetworkLogConfigResponseComputeV1(
      aggregationInterval: map['aggregationInterval'] as String,
      enable: map['enable'] as bool,
      filterExpr: map['filterExpr'] as String,
      flowSampling: map['flowSampling'] as double,
      metadata: map['metadata'] as String,
      metadataFields: (map['metadataFields'] as List).cast<String>(),
    );
  }
}
