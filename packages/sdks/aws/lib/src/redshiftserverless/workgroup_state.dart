// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workgroup_config_parameter.dart';
import 'workgroup_endpoint.dart';
import 'workgroup_price_performance_target.dart';

/// Input properties used for looking up and filtering Workgroup resources.
class WorkgroupState {
  /// Amazon Resource Name (ARN) of the Redshift Serverless Workgroup.
  final pulumi.Input<String>? arn;
  /// The base data warehouse capacity of the workgroup in Redshift Processing Units (RPUs).
  final pulumi.Input<int>? baseCapacity;
  /// An array of parameters to set for more control over a serverless database. See `Config Parameter` below.
  final pulumi.Input<List<WorkgroupConfigParameter>>? configParameters;
  /// The endpoint that is created from the workgroup. See `Endpoint` below.
  final pulumi.Input<List<WorkgroupEndpoint>>? endpoints;
  /// The value that specifies whether to turn on enhanced virtual private cloud (VPC) routing, which forces Amazon Redshift Serverless to route traffic through your VPC instead of over the internet.
  final pulumi.Input<bool>? enhancedVpcRouting;
  /// The maximum data-warehouse capacity Amazon Redshift Serverless uses to serve queries, specified in Redshift Processing Units (RPUs).
  final pulumi.Input<int>? maxCapacity;
  /// The name of the namespace.
  final pulumi.Input<String>? namespaceName;
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
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The name of the track for the workgroup. If it is `current`, you get the most up-to-date certified release version with the latest features, security updates, and performance enhancements. If it is `trailing`, you will be on the previous certified release. For more information, see the following [AWS document](https://docs.aws.amazon.com/redshift/latest/mgmt/tracks.html).
  final pulumi.Input<String>? trackName;
  /// The Redshift Workgroup ID.
  final pulumi.Input<String>? workgroupId;
  /// The name of the workgroup.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? workgroupName;

  /// Creates a new [WorkgroupState].
  /// [arn] Amazon Resource Name (ARN) of the Redshift Serverless Workgroup.
  /// [baseCapacity] The base data warehouse capacity of the workgroup in Redshift Processing Units (RPUs).
  /// [configParameters] An array of parameters to set for more control over a serverless database. See `Config Parameter` below.
  /// [endpoints] The endpoint that is created from the workgroup. See `Endpoint` below.
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
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [trackName] The name of the track for the workgroup. If it is `current`, you get the most up-to-date certified release version with the latest features, security updates, and performance enhancements. If it is `trailing`, you will be on the previous certified release. For more information, see the following [AWS document](https://docs.aws.amazon.com/redshift/latest/mgmt/tracks.html).
  /// [workgroupId] The Redshift Workgroup ID.
  /// [workgroupName] The name of the workgroup.
  WorkgroupState({
    pulumi.Output<String>? arn,
    pulumi.Output<int>? baseCapacity,
    pulumi.Output<List<WorkgroupConfigParameter>>? configParameters,
    pulumi.Output<List<WorkgroupEndpoint>>? endpoints,
    pulumi.Output<bool>? enhancedVpcRouting,
    pulumi.Output<int>? maxCapacity,
    pulumi.Output<String>? namespaceName,
    pulumi.Output<int>? port,
    pulumi.Output<WorkgroupPricePerformanceTarget>? pricePerformanceTarget,
    pulumi.Output<bool>? publiclyAccessible,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? securityGroupIds,
    pulumi.Output<List<String>>? subnetIds,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? trackName,
    pulumi.Output<String>? workgroupId,
    pulumi.Output<String>? workgroupName,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      baseCapacity = pulumi.Input.asOptionalInput<int>(baseCapacity),
      configParameters = pulumi.Input.asOptionalInput<List<WorkgroupConfigParameter>>(configParameters),
      endpoints = pulumi.Input.asOptionalInput<List<WorkgroupEndpoint>>(endpoints),
      enhancedVpcRouting = pulumi.Input.asOptionalInput<bool>(enhancedVpcRouting),
      maxCapacity = pulumi.Input.asOptionalInput<int>(maxCapacity),
      namespaceName = pulumi.Input.asOptionalInput<String>(namespaceName),
      port = pulumi.Input.asOptionalInput<int>(port),
      pricePerformanceTarget = pulumi.Input.asOptionalInput<WorkgroupPricePerformanceTarget>(pricePerformanceTarget),
      publiclyAccessible = pulumi.Input.asOptionalInput<bool>(publiclyAccessible),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityGroupIds = pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
      subnetIds = pulumi.Input.asOptionalInput<List<String>>(subnetIds),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      trackName = pulumi.Input.asOptionalInput<String>(trackName),
      workgroupId = pulumi.Input.asOptionalInput<String>(workgroupId),
      workgroupName = pulumi.Input.asOptionalInput<String>(workgroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'baseCapacity': ?baseCapacity,
      'configParameters': ?pulumi.Input.mapOptionalInputValue<List<WorkgroupConfigParameter>, List<Map<String, dynamic>>>(configParameters, (value) => pulumi.Input.encodeList<WorkgroupConfigParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'endpoints': ?pulumi.Input.mapOptionalInputValue<List<WorkgroupEndpoint>, List<Map<String, dynamic>>>(endpoints, (value) => pulumi.Input.encodeList<WorkgroupEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enhancedVpcRouting': ?enhancedVpcRouting,
      'maxCapacity': ?maxCapacity,
      'namespaceName': ?namespaceName,
      'port': ?port,
      'pricePerformanceTarget': ?pulumi.Input.mapOptionalInputValue<WorkgroupPricePerformanceTarget, Map<String, dynamic>>(pricePerformanceTarget, (value) => value.toMap()),
      'publiclyAccessible': ?publiclyAccessible,
      'region': ?region,
      'securityGroupIds': ?securityGroupIds,
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'trackName': ?trackName,
      'workgroupId': ?workgroupId,
      'workgroupName': ?workgroupName,
    };
  }

  factory WorkgroupState.fromMap(Map<String, dynamic> map) {
    return WorkgroupState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      baseCapacity: map['baseCapacity'] == null ? null : pulumi.Output.create<int>(map['baseCapacity'] as int),
      configParameters: map['configParameters'] == null ? null : pulumi.Output.create<List<WorkgroupConfigParameter>>(pulumi.Input.decodeList<WorkgroupConfigParameter>(map['configParameters'], (value) => WorkgroupConfigParameter.fromMap((value as Map).cast<String, dynamic>()))),
      endpoints: map['endpoints'] == null ? null : pulumi.Output.create<List<WorkgroupEndpoint>>(pulumi.Input.decodeList<WorkgroupEndpoint>(map['endpoints'], (value) => WorkgroupEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      enhancedVpcRouting: map['enhancedVpcRouting'] == null ? null : pulumi.Output.create<bool>(map['enhancedVpcRouting'] as bool),
      maxCapacity: map['maxCapacity'] == null ? null : pulumi.Output.create<int>(map['maxCapacity'] as int),
      namespaceName: map['namespaceName'] == null ? null : pulumi.Output.create<String>(map['namespaceName'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      pricePerformanceTarget: map['pricePerformanceTarget'] == null ? null : pulumi.Output.create<WorkgroupPricePerformanceTarget>(WorkgroupPricePerformanceTarget.fromMap((map['pricePerformanceTarget'] as Map).cast<String, dynamic>())),
      publiclyAccessible: map['publiclyAccessible'] == null ? null : pulumi.Output.create<bool>(map['publiclyAccessible'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      securityGroupIds: map['securityGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['securityGroupIds'] as List).cast<String>()),
      subnetIds: map['subnetIds'] == null ? null : pulumi.Output.create<List<String>>((map['subnetIds'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      trackName: map['trackName'] == null ? null : pulumi.Output.create<String>(map['trackName'] as String),
      workgroupId: map['workgroupId'] == null ? null : pulumi.Output.create<String>(map['workgroupId'] as String),
      workgroupName: map['workgroupName'] == null ? null : pulumi.Output.create<String>(map['workgroupName'] as String),
    );
  }
}

