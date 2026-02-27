// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for EndpointAccess.
class EndpointAccessRedshiftserverlessArgs {
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

  EndpointAccessRedshiftserverlessArgs({
    required this.endpointName,
    this.ownerAccount,
    this.region,
    required this.subnetIds,
    this.vpcSecurityGroupIds,
    required this.workgroupName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endpointName'] = endpointName;
    final ownerAccountValue = ownerAccount;
    if (ownerAccountValue != null) {
      map['ownerAccount'] = ownerAccountValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['subnetIds'] = subnetIds;
    final vpcSecurityGroupIdsValue = vpcSecurityGroupIds;
    if (vpcSecurityGroupIdsValue != null) {
      map['vpcSecurityGroupIds'] = vpcSecurityGroupIdsValue;
    }
    map['workgroupName'] = workgroupName;
    return map;
  }

  factory EndpointAccessRedshiftserverlessArgs.fromMap(
      Map<String, dynamic> map) {
    return EndpointAccessRedshiftserverlessArgs(
      endpointName: pulumi.Input.asInput<String>(map['endpointName']),
      ownerAccount: pulumi.Input.asOptionalInput<String>(map['ownerAccount']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      subnetIds: pulumi.Input.asInput<List<String>>(map['subnetIds']),
      vpcSecurityGroupIds: pulumi.Input.asOptionalInput<List<String>>(
          map['vpcSecurityGroupIds']),
      workgroupName: pulumi.Input.asInput<String>(map['workgroupName']),
    );
  }
}
