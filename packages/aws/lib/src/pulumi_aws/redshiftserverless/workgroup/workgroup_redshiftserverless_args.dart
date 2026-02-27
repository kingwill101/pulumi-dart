// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../workgroup_config_parameter/workgroup_config_parameter.dart';
import '../workgroup_price_performance_target/workgroup_price_performance_target.dart';

/// The set of arguments for Workgroup.
class WorkgroupRedshiftserverlessArgs {
  /// The base data warehouse capacity of the workgroup in Redshift Processing Units (RPUs).
  final pulumi.Input<int>? baseCapacity;

  /// An array of parameters to set for more control over a serverless database. See `Config Parameter` below.
  final pulumi.Input<List<WorkgroupConfigParameter>>? configParameters;

  /// The value that specifies whether to turn on enhanced virtual private cloud (VPC) routing, which forces Amazon Redshift Serverless to route traffic through your VPC instead of over the internet.
  final pulumi.Input<bool>? enhancedVpcRouting;

  /// The maximum data-warehouse capacity Amazon Redshift Serverless uses to serve queries, specified in Redshift Processing Units (RPUs).
  final pulumi.Input<int>? maxCapacity;

  /// The name of the namespace.
  final pulumi.Input<String> namespaceName;

  /// The port number on which the cluster accepts incoming connections.
  final pulumi.Input<int>? port;

  /// Price-performance scaling for the workgroup. See `Price Performance Target` below.
  final pulumi.Input<WorkgroupPricePerformanceTarget>? pricePerformanceTarget;

  /// A value that specifies whether the workgroup can be accessed from a public network.
  final pulumi.Input<bool>? publiclyAccessible;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// An array of security group IDs to associate with the workgroup.
  final pulumi.Input<List<String>>? securityGroupIds;

  /// An array of VPC subnet IDs to associate with the workgroup. When set, must contain at least three subnets spanning three Availability Zones. A minimum number of IP addresses is required and scales with the Base Capacity. For more information, see the following [AWS document](https://docs.aws.amazon.com/redshift/latest/mgmt/serverless-known-issues.html).
  final pulumi.Input<List<String>>? subnetIds;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The name of the track for the workgroup. If it is `current`, you get the most up-to-date certified release version with the latest features, security updates, and performance enhancements. If it is `trailing`, you will be on the previous certified release. For more information, see the following [AWS document](https://docs.aws.amazon.com/redshift/latest/mgmt/tracks.html).
  final pulumi.Input<String>? trackName;

  /// The name of the workgroup.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> workgroupName;

  WorkgroupRedshiftserverlessArgs({
    this.baseCapacity,
    this.configParameters,
    this.enhancedVpcRouting,
    this.maxCapacity,
    required this.namespaceName,
    this.port,
    this.pricePerformanceTarget,
    this.publiclyAccessible,
    this.region,
    this.securityGroupIds,
    this.subnetIds,
    this.tags,
    this.trackName,
    required this.workgroupName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final baseCapacityValue = baseCapacity;
    if (baseCapacityValue != null) {
      map['baseCapacity'] = baseCapacityValue;
    }
    final configParametersValue = configParameters;
    if (configParametersValue != null) {
      map['configParameters'] = pulumi.Input.mapOptionalInputValue<
              List<WorkgroupConfigParameter>, List<Map<String, dynamic>>>(
          configParametersValue,
          (value) => pulumi.Input.encodeList<WorkgroupConfigParameter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final enhancedVpcRoutingValue = enhancedVpcRouting;
    if (enhancedVpcRoutingValue != null) {
      map['enhancedVpcRouting'] = enhancedVpcRoutingValue;
    }
    final maxCapacityValue = maxCapacity;
    if (maxCapacityValue != null) {
      map['maxCapacity'] = maxCapacityValue;
    }
    map['namespaceName'] = namespaceName;
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final pricePerformanceTargetValue = pricePerformanceTarget;
    if (pricePerformanceTargetValue != null) {
      map['pricePerformanceTarget'] = pulumi.Input.mapOptionalInputValue<
              WorkgroupPricePerformanceTarget, Map<String, dynamic>>(
          pricePerformanceTargetValue, (value) => value.toMap());
    }
    final publiclyAccessibleValue = publiclyAccessible;
    if (publiclyAccessibleValue != null) {
      map['publiclyAccessible'] = publiclyAccessibleValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final securityGroupIdsValue = securityGroupIds;
    if (securityGroupIdsValue != null) {
      map['securityGroupIds'] = securityGroupIdsValue;
    }
    final subnetIdsValue = subnetIds;
    if (subnetIdsValue != null) {
      map['subnetIds'] = subnetIdsValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final trackNameValue = trackName;
    if (trackNameValue != null) {
      map['trackName'] = trackNameValue;
    }
    map['workgroupName'] = workgroupName;
    return map;
  }

  factory WorkgroupRedshiftserverlessArgs.fromMap(Map<String, dynamic> map) {
    return WorkgroupRedshiftserverlessArgs(
      baseCapacity: pulumi.Input.asOptionalInput<int>(map['baseCapacity']),
      configParameters:
          pulumi.Input.asOptionalInput<List<WorkgroupConfigParameter>>(
              map['configParameters']),
      enhancedVpcRouting:
          pulumi.Input.asOptionalInput<bool>(map['enhancedVpcRouting']),
      maxCapacity: pulumi.Input.asOptionalInput<int>(map['maxCapacity']),
      namespaceName: pulumi.Input.asInput<String>(map['namespaceName']),
      port: pulumi.Input.asOptionalInput<int>(map['port']),
      pricePerformanceTarget:
          pulumi.Input.asOptionalInput<WorkgroupPricePerformanceTarget>(
              map['pricePerformanceTarget']),
      publiclyAccessible:
          pulumi.Input.asOptionalInput<bool>(map['publiclyAccessible']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      securityGroupIds:
          pulumi.Input.asOptionalInput<List<String>>(map['securityGroupIds']),
      subnetIds: pulumi.Input.asOptionalInput<List<String>>(map['subnetIds']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      trackName: pulumi.Input.asOptionalInput<String>(map['trackName']),
      workgroupName: pulumi.Input.asInput<String>(map['workgroupName']),
    );
  }
}
