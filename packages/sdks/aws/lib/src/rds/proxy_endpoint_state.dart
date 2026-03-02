// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ProxyEndpoint resources.
class ProxyEndpointState {
  /// The Amazon Resource Name (ARN) for the proxy endpoint.
  final pulumi.Input<String>? arn;
  /// The identifier for the proxy endpoint. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it can't end with a hyphen or contain two consecutive hyphens.
  final pulumi.Input<String>? dbProxyEndpointName;
  /// The name of the DB proxy associated with the DB proxy endpoint that you create.
  final pulumi.Input<String>? dbProxyName;
  /// The endpoint that you can use to connect to the proxy. You include the endpoint value in the connection string for a database client application.
  final pulumi.Input<String>? endpoint;
  /// Indicates whether this endpoint is the default endpoint for the associated DB proxy.
  final pulumi.Input<bool>? isDefault;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Indicates whether the DB proxy endpoint can be used for read/write or read-only operations. The default is `READ_WRITE`. Valid values are `READ_WRITE` and `READ_ONLY`.
  final pulumi.Input<String>? targetRole;
  /// The VPC ID of the DB proxy endpoint.
  final pulumi.Input<String>? vpcId;
  /// One or more VPC security group IDs to associate with the new proxy.
  final pulumi.Input<List<String>>? vpcSecurityGroupIds;
  /// One or more VPC subnet IDs to associate with the new proxy.
  final pulumi.Input<List<String>>? vpcSubnetIds;

  /// Creates a new [ProxyEndpointState].
  /// [arn] The Amazon Resource Name (ARN) for the proxy endpoint.
  /// [dbProxyEndpointName] The identifier for the proxy endpoint. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it can't end with a hyphen or contain two consecutive hyphens.
  /// [dbProxyName] The name of the DB proxy associated with the DB proxy endpoint that you create.
  /// [endpoint] The endpoint that you can use to connect to the proxy. You include the endpoint value in the connection string for a database client application.
  /// [isDefault] Indicates whether this endpoint is the default endpoint for the associated DB proxy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A mapping of tags to assign to the resource.
  /// [tagsAll] Optional.
  /// [targetRole] Indicates whether the DB proxy endpoint can be used for read/write or read-only operations. The default is `READ_WRITE`. Valid values are `READ_WRITE` and `READ_ONLY`.
  /// [vpcId] The VPC ID of the DB proxy endpoint.
  /// [vpcSecurityGroupIds] One or more VPC security group IDs to associate with the new proxy.
  /// [vpcSubnetIds] One or more VPC subnet IDs to associate with the new proxy.
  ProxyEndpointState({
    this.arn,
    this.dbProxyEndpointName,
    this.dbProxyName,
    this.endpoint,
    this.isDefault,
    this.region,
    this.tags,
    this.tagsAll,
    this.targetRole,
    this.vpcId,
    this.vpcSecurityGroupIds,
    this.vpcSubnetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'dbProxyEndpointName': ?dbProxyEndpointName,
      'dbProxyName': ?dbProxyName,
      'endpoint': ?endpoint,
      'isDefault': ?isDefault,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'targetRole': ?targetRole,
      'vpcId': ?vpcId,
      'vpcSecurityGroupIds': ?vpcSecurityGroupIds,
      'vpcSubnetIds': ?vpcSubnetIds,
    };
  }

  factory ProxyEndpointState.fromMap(Map<String, dynamic> map) {
    return ProxyEndpointState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      dbProxyEndpointName: map['dbProxyEndpointName'] == null ? null : (map['dbProxyEndpointName'] as String).input(),
      dbProxyName: map['dbProxyName'] == null ? null : (map['dbProxyName'] as String).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint'] as String).input(),
      isDefault: map['isDefault'] == null ? null : (map['isDefault'] as bool).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      targetRole: map['targetRole'] == null ? null : (map['targetRole'] as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
      vpcSecurityGroupIds: map['vpcSecurityGroupIds'] == null ? null : ((map['vpcSecurityGroupIds'] as List).cast<String>()).input(),
      vpcSubnetIds: map['vpcSubnetIds'] == null ? null : ((map['vpcSubnetIds'] as List).cast<String>()).input(),
    );
  }
}

