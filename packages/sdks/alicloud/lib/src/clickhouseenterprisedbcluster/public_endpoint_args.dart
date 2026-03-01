// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_clickhouseenterprisedbcluster_public_endpoint_public_endpoint_args_doc}
/// The set of arguments for PublicEndpoint.
/// {@endtemplate}
/// {@macro pulumi_clickhouseenterprisedbcluster_public_endpoint_public_endpoint_args_doc}
class PublicEndpointArgs {
  /// The public network connection string prefix of the instance.
  final pulumi.Input<String> connectionStringPrefix;
  /// The cluster ID.
  final pulumi.Input<String> dbInstanceId;
  /// Network type of the connection address. Valid values:
  /// - Public: Public network.
  final pulumi.Input<String> netType;

  /// Creates a new [PublicEndpointArgs].
  /// [connectionStringPrefix] The public network connection string prefix of the instance.
  /// [dbInstanceId] The cluster ID.
  /// [netType] Network type of the connection address. Valid values:
  PublicEndpointArgs({
    required pulumi.Output<String> connectionStringPrefix,
    required pulumi.Output<String> dbInstanceId,
    required pulumi.Output<String> netType,
  }) :
      connectionStringPrefix = pulumi.Input.asInput<String>(connectionStringPrefix),
      dbInstanceId = pulumi.Input.asInput<String>(dbInstanceId),
      netType = pulumi.Input.asInput<String>(netType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionStringPrefix': connectionStringPrefix,
      'dbInstanceId': dbInstanceId,
      'netType': netType,
    };
  }

  factory PublicEndpointArgs.fromMap(Map<String, dynamic> map) {
    return PublicEndpointArgs(
      connectionStringPrefix: pulumi.Output.create<String>(map['connectionStringPrefix'] as String),
      dbInstanceId: pulumi.Output.create<String>(map['dbInstanceId'] as String),
      netType: pulumi.Output.create<String>(map['netType'] as String),
    );
  }
}

