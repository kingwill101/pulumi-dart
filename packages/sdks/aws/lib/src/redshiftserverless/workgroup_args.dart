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
    return <String, dynamic>{
      'baseCapacity': ?baseCapacity,
      'configParameters': ?pulumi.Input.mapOptionalInputValue<List<WorkgroupConfigParameter>, List<Map<String, dynamic>>>(configParameters, (value) => pulumi.Input.encodeList<WorkgroupConfigParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enhancedVpcRouting': ?enhancedVpcRouting,
      'maxCapacity': ?maxCapacity,
      'namespaceName': namespaceName,
      'port': ?port,
      'pricePerformanceTarget': ?pulumi.Input.mapOptionalInputValue<WorkgroupPricePerformanceTarget, Map<String, dynamic>>(pricePerformanceTarget, (value) => value.toMap()),
      'publiclyAccessible': ?publiclyAccessible,
      'region': ?region,
      'securityGroupIds': ?securityGroupIds,
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'trackName': ?trackName,
      'workgroupName': workgroupName,
    };
  }

  factory WorkgroupArgs.fromMap(Map<String, dynamic> map) {
    return WorkgroupArgs(
      baseCapacity: map['baseCapacity'] == null ? null : (map['baseCapacity'] as int).input(),
      configParameters: map['configParameters'] == null ? null : (pulumi.Input.decodeList<WorkgroupConfigParameter>(map['configParameters'], (value) => WorkgroupConfigParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enhancedVpcRouting: map['enhancedVpcRouting'] == null ? null : (map['enhancedVpcRouting'] as bool).input(),
      maxCapacity: map['maxCapacity'] == null ? null : (map['maxCapacity'] as int).input(),
      namespaceName: (map['namespaceName'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      pricePerformanceTarget: map['pricePerformanceTarget'] == null ? null : (WorkgroupPricePerformanceTarget.fromMap((map['pricePerformanceTarget'] as Map).cast<String, dynamic>())).input(),
      publiclyAccessible: map['publiclyAccessible'] == null ? null : (map['publiclyAccessible'] as bool).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      securityGroupIds: map['securityGroupIds'] == null ? null : ((map['securityGroupIds'] as List).cast<String>()).input(),
      subnetIds: map['subnetIds'] == null ? null : ((map['subnetIds'] as List).cast<String>()).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      trackName: map['trackName'] == null ? null : (map['trackName'] as String).input(),
      workgroupName: (map['workgroupName'] as String).input(),
    );
  }
}

