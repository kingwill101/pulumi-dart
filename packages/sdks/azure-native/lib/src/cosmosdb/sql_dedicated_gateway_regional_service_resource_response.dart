// ignore_for_file: unused_element, unnecessary_cast


/// Resource for a regional service location.
class SqlDedicatedGatewayRegionalServiceResourceResponse {
  /// The location name.
  final String location;
  /// The regional service name.
  final String name;
  /// The regional endpoint for SqlDedicatedGateway.
  final String sqlDedicatedGatewayEndpoint;
  /// Describes the status of a service.
  final String status;

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
      location: map['location'] as String,
      name: map['name'] as String,
      sqlDedicatedGatewayEndpoint: map['sqlDedicatedGatewayEndpoint'] as String,
      status: map['status'] as String,
    );
  }
}

