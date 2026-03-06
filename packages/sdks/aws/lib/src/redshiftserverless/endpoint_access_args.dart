// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redshiftserverless_endpoint_access_endpoint_access_args_doc}
/// The set of arguments for EndpointAccess.
/// {@endtemplate}
/// {@macro pulumi_redshiftserverless_endpoint_access_endpoint_access_args_doc}
class EndpointAccessArgs {
  /// The name of the endpoint.
  final pulumi.Input<String> endpointName;
  /// The owner Amazon Web Services account for the Amazon Redshift Serverless workgroup.
  final pulumi.Input<String>? ownerAccount;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// An array of VPC subnet IDs to associate with the endpoint.
  final pulumi.Input<List<String>> subnetIds;
  /// An array of security group IDs to associate with the workgroup.
  final pulumi.Input<List<String>>? vpcSecurityGroupIds;
  /// The name of the workgroup.
  final pulumi.Input<String> workgroupName;

  /// Creates a new [EndpointAccessArgs].
  /// [endpointName] The name of the endpoint.
  /// [ownerAccount] The owner Amazon Web Services account for the Amazon Redshift Serverless workgroup.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subnetIds] An array of VPC subnet IDs to associate with the endpoint.
  /// [vpcSecurityGroupIds] An array of security group IDs to associate with the workgroup.
  /// [workgroupName] The name of the workgroup.
  const EndpointAccessArgs({
    required this.endpointName,
    this.ownerAccount,
    this.region,
    required this.subnetIds,
    this.vpcSecurityGroupIds,
    required this.workgroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointName': endpointName,
      'ownerAccount': ?ownerAccount,
      'region': ?region,
      'subnetIds': subnetIds,
      'vpcSecurityGroupIds': ?vpcSecurityGroupIds,
      'workgroupName': workgroupName,
    };
  }

  factory EndpointAccessArgs.fromMap(Map<String, dynamic> map) {
    return EndpointAccessArgs(
      endpointName: pulumi.Input.fromValue(map['endpointName'] as String),
      ownerAccount: (() { final guardedValue = map['ownerAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetIds: pulumi.Input.fromValue((map['subnetIds'] as List).cast<String>()),
      vpcSecurityGroupIds: (() { final guardedValue = map['vpcSecurityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      workgroupName: pulumi.Input.fromValue(map['workgroupName'] as String),
    );
  }
}

