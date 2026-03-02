// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_access_vpc_endpoint.dart';

/// Input properties used for looking up and filtering EndpointAccess resources.
class EndpointAccessState {
  /// The DNS address of the VPC endpoint.
  final pulumi.Input<String>? address;
  /// Amazon Resource Name (ARN) of the Redshift Serverless Endpoint Access.
  final pulumi.Input<String>? arn;
  /// The name of the endpoint.
  final pulumi.Input<String>? endpointName;
  /// The owner Amazon Web Services account for the Amazon Redshift Serverless workgroup.
  final pulumi.Input<String>? ownerAccount;
  /// The port that Amazon Redshift Serverless listens on.
  final pulumi.Input<int>? port;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// An array of VPC subnet IDs to associate with the endpoint.
  final pulumi.Input<List<String>>? subnetIds;
  /// The VPC endpoint or the Redshift Serverless workgroup. See `VPC Endpoint` below.
  final pulumi.Input<List<EndpointAccessVpcEndpoint>>? vpcEndpoints;
  /// An array of security group IDs to associate with the workgroup.
  final pulumi.Input<List<String>>? vpcSecurityGroupIds;
  /// The name of the workgroup.
  final pulumi.Input<String>? workgroupName;

  /// Creates a new [EndpointAccessState].
  /// [address] The DNS address of the VPC endpoint.
  /// [arn] Amazon Resource Name (ARN) of the Redshift Serverless Endpoint Access.
  /// [endpointName] The name of the endpoint.
  /// [ownerAccount] The owner Amazon Web Services account for the Amazon Redshift Serverless workgroup.
  /// [port] The port that Amazon Redshift Serverless listens on.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subnetIds] An array of VPC subnet IDs to associate with the endpoint.
  /// [vpcEndpoints] The VPC endpoint or the Redshift Serverless workgroup. See `VPC Endpoint` below.
  /// [vpcSecurityGroupIds] An array of security group IDs to associate with the workgroup.
  /// [workgroupName] The name of the workgroup.
  EndpointAccessState({
    this.address,
    this.arn,
    this.endpointName,
    this.ownerAccount,
    this.port,
    this.region,
    this.subnetIds,
    this.vpcEndpoints,
    this.vpcSecurityGroupIds,
    this.workgroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'arn': ?arn,
      'endpointName': ?endpointName,
      'ownerAccount': ?ownerAccount,
      'port': ?port,
      'region': ?region,
      'subnetIds': ?subnetIds,
      'vpcEndpoints': ?pulumi.Input.mapOptionalInputValue<List<EndpointAccessVpcEndpoint>, List<Map<String, dynamic>>>(vpcEndpoints, (value) => pulumi.Input.encodeList<EndpointAccessVpcEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcSecurityGroupIds': ?vpcSecurityGroupIds,
      'workgroupName': ?workgroupName,
    };
  }

  factory EndpointAccessState.fromMap(Map<String, dynamic> map) {
    return EndpointAccessState(
      address: map['address'] == null ? null : ((map['address'] as String).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      endpointName: map['endpointName'] == null ? null : ((map['endpointName'] as String).input()).input(),
      ownerAccount: map['ownerAccount'] == null ? null : ((map['ownerAccount'] as String).input()).input(),
      port: map['port'] == null ? null : ((map['port'] as int).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      subnetIds: map['subnetIds'] == null ? null : (((map['subnetIds'] as List).cast<String>()).input()).input(),
      vpcEndpoints: map['vpcEndpoints'] == null ? null : ((pulumi.Input.decodeList<EndpointAccessVpcEndpoint>(map['vpcEndpoints']!, (value) => EndpointAccessVpcEndpoint.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      vpcSecurityGroupIds: map['vpcSecurityGroupIds'] == null ? null : (((map['vpcSecurityGroupIds'] as List).cast<String>()).input()).input(),
      workgroupName: map['workgroupName'] == null ? null : ((map['workgroupName'] as String).input()).input(),
    );
  }
}

