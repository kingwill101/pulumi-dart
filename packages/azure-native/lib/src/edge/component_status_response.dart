// ignore_for_file: unused_element, unnecessary_cast


/// Component Status
class ComponentStatusResponse {
  /// Component name
  final String? name;
  /// Component status
  final String? status;

  /// Creates a new [ComponentStatusResponse].
  /// [name] Component name
  /// [status] Component status
  ComponentStatusResponse({
    this.name,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'status': ?status,
    };
  }

  factory ComponentStatusResponse.fromMap(Map<String, dynamic> map) {
    return ComponentStatusResponse(
      name: map['name'] == null ? null : map['name'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

