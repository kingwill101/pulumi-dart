// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_proxy_endpoint_proxy_endpoint_args_doc}
/// The set of arguments for ProxyEndpoint.
/// {@endtemplate}
/// {@macro pulumi_rds_proxy_endpoint_proxy_endpoint_args_doc}
class ProxyEndpointArgs {
  /// The identifier for the proxy endpoint. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it can't end with a hyphen or contain two consecutive hyphens.
  final pulumi.Input<String> dbProxyEndpointName;

  /// The name of the DB proxy associated with the DB proxy endpoint that you create.
  final pulumi.Input<String> dbProxyName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Indicates whether the DB proxy endpoint can be used for read/write or read-only operations. The default is `READ_WRITE`. Valid values are `READ_WRITE` and `READ_ONLY`.
  final pulumi.Input<String>? targetRole;

  /// One or more VPC security group IDs to associate with the new proxy.
  final pulumi.Input<List<String>>? vpcSecurityGroupIds;

  /// One or more VPC subnet IDs to associate with the new proxy.
  final pulumi.Input<List<String>> vpcSubnetIds;

  /// Creates a new [ProxyEndpointArgs].
  /// [dbProxyEndpointName] The identifier for the proxy endpoint. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it can't end with a hyphen or contain two consecutive hyphens.
  /// [dbProxyName] The name of the DB proxy associated with the DB proxy endpoint that you create.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A mapping of tags to assign to the resource.
  /// [targetRole] Indicates whether the DB proxy endpoint can be used for read/write or read-only operations. The default is `READ_WRITE`. Valid values are `READ_WRITE` and `READ_ONLY`.
  /// [vpcSecurityGroupIds] One or more VPC security group IDs to associate with the new proxy.
  /// [vpcSubnetIds] One or more VPC subnet IDs to associate with the new proxy.
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
    return <String, dynamic>{
      'dbProxyEndpointName': dbProxyEndpointName,
      'dbProxyName': dbProxyName,
      'region': ?region,
      'tags': ?tags,
      'targetRole': ?targetRole,
      'vpcSecurityGroupIds': ?vpcSecurityGroupIds,
      'vpcSubnetIds': vpcSubnetIds,
    };
  }

  factory ProxyEndpointArgs.fromMap(Map<String, dynamic> map) {
    return ProxyEndpointArgs(
      dbProxyEndpointName: pulumi.Input.fromValue(
        map['dbProxyEndpointName'] as String,
      ),
      dbProxyName: pulumi.Input.fromValue(map['dbProxyName'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      targetRole: (() {
        final guardedValue = map['targetRole'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcSecurityGroupIds: (() {
        final guardedValue = map['vpcSecurityGroupIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      vpcSubnetIds: pulumi.Input.fromValue(
        (map['vpcSubnetIds'] as List).cast<String>(),
      ),
    );
  }
}
