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
  const EndpointAccessState({
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
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointName: (() { final guardedValue = map['endpointName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerAccount: (() { final guardedValue = map['ownerAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vpcEndpoints: (() { final guardedValue = map['vpcEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EndpointAccessVpcEndpoint>(guardedValue, (value) => EndpointAccessVpcEndpoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vpcSecurityGroupIds: (() { final guardedValue = map['vpcSecurityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      workgroupName: (() { final guardedValue = map['workgroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

