// ignore_for_file: unused_element, unnecessary_cast


/// Resource for a regional service location.
class MaterializedViewsBuilderRegionalServiceResourceResponse {
  /// The location name.
  final String location;
  /// The regional service name.
  final String name;
  /// Describes the status of a service.
  final String status;

  /// Creates a new [MaterializedViewsBuilderRegionalServiceResourceResponse].
  /// [location] The location name.
  /// [name] The regional service name.
  /// [status] Describes the status of a service.
  MaterializedViewsBuilderRegionalServiceResourceResponse({
    required this.location,
    required this.name,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'name': name,
      'status': status,
    };
  }

  factory MaterializedViewsBuilderRegionalServiceResourceResponse.fromMap(Map<String, dynamic> map) {
    return MaterializedViewsBuilderRegionalServiceResourceResponse(
      location: map['location'] as String,
      name: map['name'] as String,
      status: map['status'] as String,
    );
  }
}

