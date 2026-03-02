// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_polardb_get_endpoints_get_endpoints_args_doc}
/// Arguments for getEndpoints.
/// {@endtemplate}
/// {@macro pulumi_polardb_get_endpoints_get_endpoints_args_doc}
class GetEndpointsArgs {
  /// PolarDB cluster ID.
  final pulumi.Input<String> dbClusterId;
  /// endpoint of the cluster.
  final pulumi.Input<String>? dbEndpointId;

  /// Creates a new [GetEndpointsArgs].
  /// [dbClusterId] PolarDB cluster ID.
  /// [dbEndpointId] endpoint of the cluster.
  GetEndpointsArgs({
    required this.dbClusterId,
    this.dbEndpointId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbClusterId': dbClusterId,
      'dbEndpointId': ?dbEndpointId,
    };
  }

  factory GetEndpointsArgs.fromMap(Map<String, dynamic> map) {
    return GetEndpointsArgs(
      dbClusterId: (map['dbClusterId'] as String).input(),
      dbEndpointId: map['dbEndpointId'] == null ? null : (map['dbEndpointId']! as String).input(),
    );
  }
}

