// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource for a regional service location.
class SqlDedicatedGatewayRegionalServiceResourceResponse {
  /// The location name.
  final pulumi.Input<String> location;
  /// The regional service name.
  final pulumi.Input<String> name;
  /// The regional endpoint for SqlDedicatedGateway.
  final pulumi.Input<String> sqlDedicatedGatewayEndpoint;
  /// Describes the status of a service.
  final pulumi.Input<String> status;

  /// Creates a new [SqlDedicatedGatewayRegionalServiceResourceResponse].
  /// [location] The location name.
  /// [name] The regional service name.
  /// [sqlDedicatedGatewayEndpoint] The regional endpoint for SqlDedicatedGateway.
  /// [status] Describes the status of a service.
  SqlDedicatedGatewayRegionalServiceResourceResponse({
    required this.location,
    required this.name,
    required this.sqlDedicatedGatewayEndpoint,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'name': name,
      'sqlDedicatedGatewayEndpoint': sqlDedicatedGatewayEndpoint,
      'status': status,
    };
  }

  factory SqlDedicatedGatewayRegionalServiceResourceResponse.fromMap(Map<String, dynamic> map) {
    return SqlDedicatedGatewayRegionalServiceResourceResponse(
      location: pulumi.Input.fromValue(map['location'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      sqlDedicatedGatewayEndpoint: pulumi.Input.fromValue(map['sqlDedicatedGatewayEndpoint'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

