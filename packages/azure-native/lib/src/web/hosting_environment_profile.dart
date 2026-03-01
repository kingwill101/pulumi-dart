// ignore_for_file: unused_element, unnecessary_cast


/// Specification for an App Service Environment to use for this resource.
class HostingEnvironmentProfile {
  /// Resource ID of the App Service Environment.
  final String? id;

  /// Creates a new [HostingEnvironmentProfile].
  /// [id] Resource ID of the App Service Environment.
  HostingEnvironmentProfile({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory HostingEnvironmentProfile.fromMap(Map<String, dynamic> map) {
    return HostingEnvironmentProfile(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

