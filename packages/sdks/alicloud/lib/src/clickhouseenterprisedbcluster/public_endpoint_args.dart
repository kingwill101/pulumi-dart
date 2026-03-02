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
    required this.connectionStringPrefix,
    required this.dbInstanceId,
    required this.netType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionStringPrefix': connectionStringPrefix,
      'dbInstanceId': dbInstanceId,
      'netType': netType,
    };
  }

  factory PublicEndpointArgs.fromMap(Map<String, dynamic> map) {
    return PublicEndpointArgs(
      connectionStringPrefix: (map['connectionStringPrefix'] as String).input(),
      dbInstanceId: (map['dbInstanceId'] as String).input(),
      netType: (map['netType'] as String).input(),
    );
  }
}

