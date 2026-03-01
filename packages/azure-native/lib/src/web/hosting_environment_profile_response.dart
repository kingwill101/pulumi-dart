// ignore_for_file: unused_element, unnecessary_cast


/// Specification for an App Service Environment to use for this resource.
class HostingEnvironmentProfileResponse {
  /// Resource ID of the App Service Environment.
  final String? id;
  /// Name of the App Service Environment.
  final String name;
  /// Resource type of the App Service Environment.
  final String type;

  /// Creates a new [HostingEnvironmentProfileResponse].
  /// [id] Resource ID of the App Service Environment.
  /// [name] Name of the App Service Environment.
  /// [type] Resource type of the App Service Environment.
  HostingEnvironmentProfileResponse({
    this.id,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': name,
      'type': type,
    };
  }

  factory HostingEnvironmentProfileResponse.fromMap(Map<String, dynamic> map) {
    return HostingEnvironmentProfileResponse(
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

