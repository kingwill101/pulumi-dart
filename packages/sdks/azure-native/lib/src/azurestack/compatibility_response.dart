// ignore_for_file: unused_element, unnecessary_cast


/// Product compatibility
class CompatibilityResponse {
  /// Full error message if any compatibility issues are found
  final String? description;
  /// Tells if product is compatible with current device
  final bool? isCompatible;
  /// List of all issues found
  final List<String>? issues;
  /// Short error message if any compatibility issues are found
  final String? message;

  /// Creates a new [CompatibilityResponse].
  /// [description] Full error message if any compatibility issues are found
  /// [isCompatible] Tells if product is compatible with current device
  /// [issues] List of all issues found
  /// [message] Short error message if any compatibility issues are found
  CompatibilityResponse({
    this.description,
    this.isCompatible,
    this.issues,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'isCompatible': ?isCompatible,
      'issues': ?issues,
      'message': ?message,
    };
  }

  factory CompatibilityResponse.fromMap(Map<String, dynamic> map) {
    return CompatibilityResponse(
      description: map['description'] == null ? null : map['description'] as String,
      isCompatible: map['isCompatible'] == null ? null : map['isCompatible'] as bool,
      issues: map['issues'] == null ? null : (map['issues'] as List).cast<String>(),
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}

