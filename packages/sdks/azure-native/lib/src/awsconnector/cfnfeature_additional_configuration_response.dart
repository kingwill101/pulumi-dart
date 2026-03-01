// ignore_for_file: unused_element, unnecessary_cast


/// Definition of CFNFeatureAdditionalConfiguration
class CFNFeatureAdditionalConfigurationResponse {
  /// Property name
  final String? name;
  /// Property status
  final String? status;

  /// Creates a new [CFNFeatureAdditionalConfigurationResponse].
  /// [name] Property name
  /// [status] Property status
  CFNFeatureAdditionalConfigurationResponse({
    this.name,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'status': ?status,
    };
  }

  factory CFNFeatureAdditionalConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return CFNFeatureAdditionalConfigurationResponse(
      name: map['name'] == null ? null : map['name'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

