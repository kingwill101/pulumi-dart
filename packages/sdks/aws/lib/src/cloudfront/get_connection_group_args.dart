// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfront_get_connection_group_get_connection_group_args_doc}
/// Arguments for getConnectionGroup.
/// {@endtemplate}
/// {@macro pulumi_cloudfront_get_connection_group_get_connection_group_args_doc}
class GetConnectionGroupArgs {
  /// Identifier for the connection group. For example: `EDFDVBD632BHDS5`. Exactly one of `id` or `routing_endpoint` must be specified.
  final pulumi.Input<String>? id;
  /// Routing endpoint for the connection group. For example: `d111111abcdef8.cloudfront.net`. Exactly one of `id` or `routing_endpoint` must be specified.
  final pulumi.Input<String>? routingEndpoint;

  /// Creates a new [GetConnectionGroupArgs].
  /// [id] Identifier for the connection group. For example: `EDFDVBD632BHDS5`. Exactly one of `id` or `routing_endpoint` must be specified.
  /// [routingEndpoint] Routing endpoint for the connection group. For example: `d111111abcdef8.cloudfront.net`. Exactly one of `id` or `routing_endpoint` must be specified.
  GetConnectionGroupArgs({
    this.id,
    this.routingEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'routingEndpoint': ?routingEndpoint,
    };
  }

  factory GetConnectionGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectionGroupArgs(
      id: map['id'] == null ? null : ((map['id'] as String).input()).input(),
      routingEndpoint: map['routingEndpoint'] == null ? null : ((map['routingEndpoint'] as String).input()).input(),
    );
  }
}

