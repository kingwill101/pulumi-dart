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
    pulumi.Output<String>? address,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? endpointName,
    pulumi.Output<String>? ownerAccount,
    pulumi.Output<int>? port,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? subnetIds,
    pulumi.Output<List<EndpointAccessVpcEndpoint>>? vpcEndpoints,
    pulumi.Output<List<String>>? vpcSecurityGroupIds,
    pulumi.Output<String>? workgroupName,
  }) :
      address = pulumi.Input.asOptionalInput<String>(address),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      endpointName = pulumi.Input.asOptionalInput<String>(endpointName),
      ownerAccount = pulumi.Input.asOptionalInput<String>(ownerAccount),
      port = pulumi.Input.asOptionalInput<int>(port),
      region = pulumi.Input.asOptionalInput<String>(region),
      subnetIds = pulumi.Input.asOptionalInput<List<String>>(subnetIds),
      vpcEndpoints = pulumi.Input.asOptionalInput<List<EndpointAccessVpcEndpoint>>(vpcEndpoints),
      vpcSecurityGroupIds = pulumi.Input.asOptionalInput<List<String>>(vpcSecurityGroupIds),
      workgroupName = pulumi.Input.asOptionalInput<String>(workgroupName);

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
      address: map['address'] == null ? null : pulumi.Output.create<String>(map['address'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      endpointName: map['endpointName'] == null ? null : pulumi.Output.create<String>(map['endpointName'] as String),
      ownerAccount: map['ownerAccount'] == null ? null : pulumi.Output.create<String>(map['ownerAccount'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      subnetIds: map['subnetIds'] == null ? null : pulumi.Output.create<List<String>>((map['subnetIds'] as List).cast<String>()),
      vpcEndpoints: map['vpcEndpoints'] == null ? null : pulumi.Output.create<List<EndpointAccessVpcEndpoint>>(pulumi.Input.decodeList<EndpointAccessVpcEndpoint>(map['vpcEndpoints'], (value) => EndpointAccessVpcEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      vpcSecurityGroupIds: map['vpcSecurityGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['vpcSecurityGroupIds'] as List).cast<String>()),
      workgroupName: map['workgroupName'] == null ? null : pulumi.Output.create<String>(map['workgroupName'] as String),
    );
  }
}

