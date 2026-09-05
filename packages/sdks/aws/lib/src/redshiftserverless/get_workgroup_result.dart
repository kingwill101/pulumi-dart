// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workgroup_endpoint.dart';

/// Result data returned by getWorkgroup.
class GetWorkgroupResult {
  /// ARN of the Redshift Serverless Workgroup.
  final String? arn;
  /// The endpoint that is created from the workgroup. See `Endpoint` below.
  final List<GetWorkgroupEndpoint>? endpoints;
  /// Value that specifies whether to turn on enhanced VPC routing, which forces Amazon Redshift Serverless to route traffic through your VPC instead of over the internet.
  final bool? enhancedVpcRouting;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? namespaceName;
  /// A value that specifies whether the workgroup can be accessed from a public network.
  final bool? publiclyAccessible;
  final String? region;
  /// An array of security group IDs to associate with the workgroup.
  final List<String>? securityGroupIds;
  /// An array of VPC subnet IDs to associate with the workgroup. When set, must contain at least three subnets spanning three Availability Zones. A minimum number of IP addresses is required and scales with the Base Capacity. For more information, see the following [AWS document](https://docs.aws.amazon.com/redshift/latest/mgmt/serverless-known-issues.html).
  final List<String>? subnetIds;
  /// The name of the track for the workgroup.
  final String? trackName;
  /// The Redshift Workgroup ID.
  final String? workgroupId;
  final String? workgroupName;

  /// Creates a new [GetWorkgroupResult].
  /// [arn] ARN of the Redshift Serverless Workgroup.
  /// [endpoints] The endpoint that is created from the workgroup. See `Endpoint` below.
  /// [enhancedVpcRouting] Value that specifies whether to turn on enhanced VPC routing, which forces Amazon Redshift Serverless to route traffic through your VPC instead of over the internet.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [namespaceName] Optional.
  /// [publiclyAccessible] A value that specifies whether the workgroup can be accessed from a public network.
  /// [region] Optional.
  /// [securityGroupIds] An array of security group IDs to associate with the workgroup.
  /// [subnetIds] An array of VPC subnet IDs to associate with the workgroup. When set, must contain at least three subnets spanning three Availability Zones. A minimum number of IP addresses is required and scales with the Base Capacity. For more information, see the following [AWS document](https://docs.aws.amazon.com/redshift/latest/mgmt/serverless-known-issues.html).
  /// [trackName] The name of the track for the workgroup.
  /// [workgroupId] The Redshift Workgroup ID.
  /// [workgroupName] Optional.
  const GetWorkgroupResult({
    this.arn,
    this.endpoints,
    this.enhancedVpcRouting,
    this.id,
    this.namespaceName,
    this.publiclyAccessible,
    this.region,
    this.securityGroupIds,
    this.subnetIds,
    this.trackName,
    this.workgroupId,
    this.workgroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'endpoints': ?(() { final guardedValue = endpoints; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWorkgroupEndpoint, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'enhancedVpcRouting': ?enhancedVpcRouting,
      'id': ?id,
      'namespaceName': ?namespaceName,
      'publiclyAccessible': ?publiclyAccessible,
      'region': ?region,
      'securityGroupIds': ?securityGroupIds,
      'subnetIds': ?subnetIds,
      'trackName': ?trackName,
      'workgroupId': ?workgroupId,
      'workgroupName': ?workgroupName,
    };
  }

  factory GetWorkgroupResult.fromMap(Map<String, dynamic> map) {
    return GetWorkgroupResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWorkgroupEndpoint>(guardedValue, (value) => GetWorkgroupEndpoint.fromMap((value as Map).cast<String, dynamic>())); })(),
      enhancedVpcRouting: (() { final guardedValue = map['enhancedVpcRouting']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namespaceName: (() { final guardedValue = map['namespaceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publiclyAccessible: (() { final guardedValue = map['publiclyAccessible']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      trackName: (() { final guardedValue = map['trackName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workgroupId: (() { final guardedValue = map['workgroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workgroupName: (() { final guardedValue = map['workgroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
