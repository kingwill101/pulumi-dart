// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workgroup_endpoint.dart';

/// Result data returned by getWorkgroup.
class GetWorkgroupResult {
  /// Amazon Resource Name (ARN) of the Redshift Serverless Workgroup.
  final String arn;
  /// The endpoint that is created from the workgroup. See `Endpoint` below.
  final List<GetWorkgroupEndpoint> endpoints;
  /// The value that specifies whether to turn on enhanced virtual private cloud (VPC) routing, which forces Amazon Redshift Serverless to route traffic through your VPC instead of over the internet.
  final bool enhancedVpcRouting;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String namespaceName;
  /// A value that specifies whether the workgroup can be accessed from a public network.
  final bool publiclyAccessible;
  final String region;
  /// An array of security group IDs to associate with the workgroup.
  final List<String> securityGroupIds;
  /// An array of VPC subnet IDs to associate with the workgroup. When set, must contain at least three subnets spanning three Availability Zones. A minimum number of IP addresses is required and scales with the Base Capacity. For more information, see the following [AWS document](https://docs.aws.amazon.com/redshift/latest/mgmt/serverless-known-issues.html).
  final List<String> subnetIds;
  /// The name of the track for the workgroup.
  final String trackName;
  /// The Redshift Workgroup ID.
  final String workgroupId;
  final String workgroupName;

  /// Creates a new [GetWorkgroupResult].
  /// [arn] Amazon Resource Name (ARN) of the Redshift Serverless Workgroup.
  /// [endpoints] The endpoint that is created from the workgroup. See `Endpoint` below.
  /// [enhancedVpcRouting] The value that specifies whether to turn on enhanced virtual private cloud (VPC) routing, which forces Amazon Redshift Serverless to route traffic through your VPC instead of over the internet.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [namespaceName] Required.
  /// [publiclyAccessible] A value that specifies whether the workgroup can be accessed from a public network.
  /// [region] Required.
  /// [securityGroupIds] An array of security group IDs to associate with the workgroup.
  /// [subnetIds] An array of VPC subnet IDs to associate with the workgroup. When set, must contain at least three subnets spanning three Availability Zones. A minimum number of IP addresses is required and scales with the Base Capacity. For more information, see the following [AWS document](https://docs.aws.amazon.com/redshift/latest/mgmt/serverless-known-issues.html).
  /// [trackName] The name of the track for the workgroup.
  /// [workgroupId] The Redshift Workgroup ID.
  /// [workgroupName] Required.
  const GetWorkgroupResult({
    required this.arn,
    required this.endpoints,
    required this.enhancedVpcRouting,
    required this.id,
    required this.namespaceName,
    required this.publiclyAccessible,
    required this.region,
    required this.securityGroupIds,
    required this.subnetIds,
    required this.trackName,
    required this.workgroupId,
    required this.workgroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'endpoints': pulumi.Input.encodeList<GetWorkgroupEndpoint, Map<String, dynamic>>(endpoints, (value) => value.toMap()),
      'enhancedVpcRouting': enhancedVpcRouting,
      'id': id,
      'namespaceName': namespaceName,
      'publiclyAccessible': publiclyAccessible,
      'region': region,
      'securityGroupIds': securityGroupIds,
      'subnetIds': subnetIds,
      'trackName': trackName,
      'workgroupId': workgroupId,
      'workgroupName': workgroupName,
    };
  }

  factory GetWorkgroupResult.fromMap(Map<String, dynamic> map) {
    return GetWorkgroupResult(
      arn: map['arn'] as String,
      endpoints: pulumi.Input.decodeList<GetWorkgroupEndpoint>(map['endpoints']!, (value) => GetWorkgroupEndpoint.fromMap((value as Map).cast<String, dynamic>())),
      enhancedVpcRouting: map['enhancedVpcRouting'] as bool,
      id: map['id'] as String,
      namespaceName: map['namespaceName'] as String,
      publiclyAccessible: map['publiclyAccessible'] as bool,
      region: map['region'] as String,
      securityGroupIds: (map['securityGroupIds'] as List).cast<String>(),
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      trackName: map['trackName'] as String,
      workgroupId: map['workgroupId'] as String,
      workgroupName: map['workgroupName'] as String,
    );
  }
}

