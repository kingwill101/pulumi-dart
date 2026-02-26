// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for EndpointAccess.
class EndpointAccessArgs2 {
  /// The name of the endpoint.
  final Input<String> endpointName;

  /// The owner Amazon Web Services account for the Amazon Redshift Serverless workgroup.
  final Input<String>? ownerAccount;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// An array of VPC subnet IDs to associate with the endpoint.
  final Input<List<String>> subnetIds;

  /// An array of security group IDs to associate with the workgroup.
  final Input<List<String>>? vpcSecurityGroupIds;

  /// The name of the workgroup.
  final Input<String> workgroupName;

  EndpointAccessArgs2({
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

  factory EndpointAccessArgs2.fromMap(Map<String, dynamic> map) {
    return EndpointAccessArgs2(
      endpointName: Input.asInput<String>(map['endpointName']),
      ownerAccount: Input.asOptionalInput<String>(map['ownerAccount']),
      region: Input.asOptionalInput<String>(map['region']),
      subnetIds: Input.asInput<List<String>>(map['subnetIds']),
      vpcSecurityGroupIds:
          Input.asOptionalInput<List<String>>(map['vpcSecurityGroupIds']),
      workgroupName: Input.asInput<String>(map['workgroupName']),
    );
  }
}
