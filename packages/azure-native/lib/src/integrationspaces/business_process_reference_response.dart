// ignore_for_file: unused_element, unnecessary_cast


/// The business process reference.
class BusinessProcessReferenceResponse {
  /// The business process name.
  final String? name;
  /// The business process version.
  final String? version;

  /// Creates a new [BusinessProcessReferenceResponse].
  /// [name] The business process name.
  /// [version] The business process version.
  BusinessProcessReferenceResponse({
    this.name,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'version': ?version,
    };
  }

  factory BusinessProcessReferenceResponse.fromMap(Map<String, dynamic> map) {
    return BusinessProcessReferenceResponse(
      name: map['name'] == null ? null : map['name'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

