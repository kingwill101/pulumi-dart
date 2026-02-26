// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ProxyEndpoint.
class ProxyEndpointArgs {
  /// The identifier for the proxy endpoint. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it can't end with a hyphen or contain two consecutive hyphens.
  final Input<String> dbProxyEndpointName;

  /// The name of the DB proxy associated with the DB proxy endpoint that you create.
  final Input<String> dbProxyName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A mapping of tags to assign to the resource.
  final Input<Map<String, String>>? tags;

  /// Indicates whether the DB proxy endpoint can be used for read/write or read-only operations. The default is `READ_WRITE`. Valid values are `READ_WRITE` and `READ_ONLY`.
  final Input<String>? targetRole;

  /// One or more VPC security group IDs to associate with the new proxy.
  final Input<List<String>>? vpcSecurityGroupIds;

  /// One or more VPC subnet IDs to associate with the new proxy.
  final Input<List<String>> vpcSubnetIds;

  ProxyEndpointArgs({
    required this.dbProxyEndpointName,
    required this.dbProxyName,
    this.region,
    this.tags,
    this.targetRole,
    this.vpcSecurityGroupIds,
    required this.vpcSubnetIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dbProxyEndpointName'] = dbProxyEndpointName;
    map['dbProxyName'] = dbProxyName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final targetRoleValue = targetRole;
    if (targetRoleValue != null) {
      map['targetRole'] = targetRoleValue;
    }
    final vpcSecurityGroupIdsValue = vpcSecurityGroupIds;
    if (vpcSecurityGroupIdsValue != null) {
      map['vpcSecurityGroupIds'] = vpcSecurityGroupIdsValue;
    }
    map['vpcSubnetIds'] = vpcSubnetIds;
    return map;
  }

  factory ProxyEndpointArgs.fromMap(Map<String, dynamic> map) {
    return ProxyEndpointArgs(
      dbProxyEndpointName: Input.asInput<String>(map['dbProxyEndpointName']),
      dbProxyName: Input.asInput<String>(map['dbProxyName']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      targetRole: Input.asOptionalInput<String>(map['targetRole']),
      vpcSecurityGroupIds:
          Input.asOptionalInput<List<String>>(map['vpcSecurityGroupIds']),
      vpcSubnetIds: Input.asInput<List<String>>(map['vpcSubnetIds']),
    );
  }
}
