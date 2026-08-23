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
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
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
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [trackName] The name of the track for the workgroup. If it is `current`, you get the most up-to-date certified release version with the latest features, security updates, and performance enhancements. If it is `trailing`, you will be on the previous certified release. For more information, see the following [AWS document](https://docs.aws.amazon.com/redshift/latest/mgmt/tracks.html).
  /// [workgroupId] The Redshift Workgroup ID.
  /// [workgroupName] The name of the workgroup.
  const WorkgroupState({
    this.arn,
    this.baseCapacity,
    this.configParameters,
    this.endpoints,
    this.enhancedVpcRouting,
    this.maxCapacity,
    this.namespaceName,
    this.port,
    this.pricePerformanceTarget,
    this.publiclyAccessible,
    this.region,
    this.securityGroupIds,
    this.subnetIds,
    this.tags,
    this.tagsAll,
    this.trackName,
    this.workgroupId,
    this.workgroupName,
  });

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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      baseCapacity: (() { final guardedValue = map['baseCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      configParameters: (() { final guardedValue = map['configParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkgroupConfigParameter>(guardedValue, (value) => WorkgroupConfigParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkgroupEndpoint>(guardedValue, (value) => WorkgroupEndpoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enhancedVpcRouting: (() { final guardedValue = map['enhancedVpcRouting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxCapacity: (() { final guardedValue = map['maxCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      namespaceName: (() { final guardedValue = map['namespaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pricePerformanceTarget: (() { final guardedValue = map['pricePerformanceTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkgroupPricePerformanceTarget.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      publiclyAccessible: (() { final guardedValue = map['publiclyAccessible']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      trackName: (() { final guardedValue = map['trackName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workgroupId: (() { final guardedValue = map['workgroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workgroupName: (() { final guardedValue = map['workgroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
