// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getConnectionGroup.
class GetConnectionGroupArgs {
  /// Identifier for the connection group. For example: `EDFDVBD632BHDS5`. Exactly one of `id` or `routing_endpoint` must be specified.
  final pulumi.Input<String>? id;

  /// Routing endpoint for the connection group. For example: `d111111abcdef8.cloudfront.net`. Exactly one of `id` or `routing_endpoint` must be specified.
  final pulumi.Input<String>? routingEndpoint;

  GetConnectionGroupArgs({
    this.id,
    this.routingEndpoint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final routingEndpointValue = routingEndpoint;
    if (routingEndpointValue != null) {
      map['routingEndpoint'] = routingEndpointValue;
    }
    return map;
  }

  factory GetConnectionGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectionGroupArgs(
      id: pulumi.Input.asOptionalInput<String>(map['id']),
      routingEndpoint:
          pulumi.Input.asOptionalInput<String>(map['routingEndpoint']),
    );
  }
}
