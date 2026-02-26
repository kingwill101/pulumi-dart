// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getConnectionGroup.
class GetConnectionGroupArgs {
  /// Identifier for the connection group. For example: `EDFDVBD632BHDS5`. Exactly one of <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> or <span pulumi-lang-nodejs="`routingEndpoint`" pulumi-lang-dotnet="`RoutingEndpoint`" pulumi-lang-go="`routingEndpoint`" pulumi-lang-python="`routing_endpoint`" pulumi-lang-yaml="`routingEndpoint`" pulumi-lang-java="`routingEndpoint`">`routing_endpoint`</span> must be specified.
  final Input<String>? id;

  /// Routing endpoint for the connection group. For example: `d111111abcdef8.cloudfront.net`. Exactly one of <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> or <span pulumi-lang-nodejs="`routingEndpoint`" pulumi-lang-dotnet="`RoutingEndpoint`" pulumi-lang-go="`routingEndpoint`" pulumi-lang-python="`routing_endpoint`" pulumi-lang-yaml="`routingEndpoint`" pulumi-lang-java="`routingEndpoint`">`routing_endpoint`</span> must be specified.
  final Input<String>? routingEndpoint;

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
      id: Input.asOptionalInput<String>(map['id']),
      routingEndpoint: Input.asOptionalInput<String>(map['routingEndpoint']),
    );
  }
}
