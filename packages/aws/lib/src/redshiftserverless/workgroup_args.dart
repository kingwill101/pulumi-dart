// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workgroup_config_parameter.dart';
import 'workgroup_price_performance_target.dart';

/// {@template pulumi_redshiftserverless_workgroup_workgroup_args_doc}
/// The set of arguments for Workgroup.
/// {@endtemplate}
/// {@macro pulumi_redshiftserverless_workgroup_workgroup_args_doc}
class WorkgroupArgs {
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

  /// Creates a new [WorkgroupArgs].
  /// [baseCapacity] The base data warehouse capacity of the workgroup in Redshift Processing Units (RPUs).
  /// [configParameters] An array of parameters to set for more control over a serverless database. See `Config Parameter` below.
  /// [enhancedVpcRouting] The value that specifies whether to turn on enhanced virtual private cloud (VPC) routing, which forces Amazon Redshift Serverless to route traffic through your VPC instead of over the internet.
  /// [maxCapacity] The maximum data-warehouse capacity Amazon Redshift Serverless uses to serve queries, specified in Redshift Processing Units (RPUs).
  /// [namespaceName] The name of the namespace.
  /// [port] The port number on which the cluster accepts incoming connections.
  /// [pricePerformanceTarget] Price-performance scaling for the workgroup. See `Price Performance Target` below.
  /// [publiclyAccessible] A value that specifies whether the workgroup can be accessed from a public network.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupIds] An array of security group IDs to associate with the workgroup.
  /// [subnetIds] An array of VPC subnet IDs to associate with the workgroup. When set, must contain at least three subnets spanning three Availability Zones. A minimum number of IP addresses is required and scales with the Base Capacity. For more information, see the following [AWS document](https://docs.aws.amazon.com/redshift/latest/mgmt/serverless-known-issues.html).
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [trackName] The name of the track for the workgroup. If it is `current`, you get the most up-to-date certified release version with the latest features, security updates, and performance enhancements. If it is `trailing`, you will be on the previous certified release. For more information, see the following [AWS document](https://docs.aws.amazon.com/redshift/latest/mgmt/tracks.html).
  /// [workgroupName] The name of the workgroup.
  WorkgroupArgs({
    int? baseCapacity,
    List<WorkgroupConfigParameter>? configParameters,
    bool? enhancedVpcRouting,
    int? maxCapacity,
    required String namespaceName,
    int? port,
    WorkgroupPricePerformanceTarget? pricePerformanceTarget,
    bool? publiclyAccessible,
    String? region,
    List<String>? securityGroupIds,
    List<String>? subnetIds,
    Map<String, String>? tags,
    String? trackName,
    required String workgroupName,
  })  : baseCapacity = pulumi.Input.asOptionalInput<int>(baseCapacity),
        configParameters =
            pulumi.Input.asOptionalInput<List<WorkgroupConfigParameter>>(
                configParameters),
        enhancedVpcRouting =
            pulumi.Input.asOptionalInput<bool>(enhancedVpcRouting),
        maxCapacity = pulumi.Input.asOptionalInput<int>(maxCapacity),
        namespaceName = pulumi.Input.asInput<String>(namespaceName),
        port = pulumi.Input.asOptionalInput<int>(port),
        pricePerformanceTarget =
            pulumi.Input.asOptionalInput<WorkgroupPricePerformanceTarget>(
                pricePerformanceTarget),
        publiclyAccessible =
            pulumi.Input.asOptionalInput<bool>(publiclyAccessible),
        region = pulumi.Input.asOptionalInput<String>(region),
        securityGroupIds =
            pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
        subnetIds = pulumi.Input.asOptionalInput<List<String>>(subnetIds),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        trackName = pulumi.Input.asOptionalInput<String>(trackName),
        workgroupName = pulumi.Input.asInput<String>(workgroupName);

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

  factory WorkgroupArgs.fromMap(Map<String, dynamic> map) {
    return WorkgroupArgs(
      baseCapacity:
          map['baseCapacity'] == null ? null : map['baseCapacity'] as int,
      configParameters: map['configParameters'] == null
          ? null
          : pulumi.Input.decodeList<WorkgroupConfigParameter>(
              map['configParameters'],
              (value) => WorkgroupConfigParameter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      enhancedVpcRouting: map['enhancedVpcRouting'] == null
          ? null
          : map['enhancedVpcRouting'] as bool,
      maxCapacity:
          map['maxCapacity'] == null ? null : map['maxCapacity'] as int,
      namespaceName: map['namespaceName'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      pricePerformanceTarget: map['pricePerformanceTarget'] == null
          ? null
          : WorkgroupPricePerformanceTarget.fromMap(
              (map['pricePerformanceTarget'] as Map).cast<String, dynamic>()),
      publiclyAccessible: map['publiclyAccessible'] == null
          ? null
          : map['publiclyAccessible'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
      securityGroupIds: map['securityGroupIds'] == null
          ? null
          : (map['securityGroupIds'] as List).cast<String>(),
      subnetIds: map['subnetIds'] == null
          ? null
          : (map['subnetIds'] as List).cast<String>(),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      trackName: map['trackName'] == null ? null : map['trackName'] as String,
      workgroupName: map['workgroupName'] as String,
    );
  }
}
