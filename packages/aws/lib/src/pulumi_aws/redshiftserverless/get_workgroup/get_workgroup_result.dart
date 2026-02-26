// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_workgroup_endpoint/get_workgroup_endpoint.dart';

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

  GetWorkgroupResult({
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
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['endpoints'] =
        Input.encodeList<GetWorkgroupEndpoint, Map<String, dynamic>>(
            endpoints, (value) => value.toMap());
    map['enhancedVpcRouting'] = enhancedVpcRouting;
    map['id'] = id;
    map['namespaceName'] = namespaceName;
    map['publiclyAccessible'] = publiclyAccessible;
    map['region'] = region;
    map['securityGroupIds'] = securityGroupIds;
    map['subnetIds'] = subnetIds;
    map['trackName'] = trackName;
    map['workgroupId'] = workgroupId;
    map['workgroupName'] = workgroupName;
    return map;
  }

  factory GetWorkgroupResult.fromMap(Map<String, dynamic> map) {
    return GetWorkgroupResult(
      arn: map['arn'] as String,
      endpoints: Input.decodeList<GetWorkgroupEndpoint>(
          map['endpoints'],
          (value) => GetWorkgroupEndpoint.fromMap(
              (value as Map).cast<String, dynamic>())),
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
