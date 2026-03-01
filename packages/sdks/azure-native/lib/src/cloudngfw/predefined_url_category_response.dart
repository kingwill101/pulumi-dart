// ignore_for_file: unused_element, unnecessary_cast


/// Predefined URL category object
class PredefinedUrlCategoryResponse {
  final String action;
  final String name;

  /// Creates a new [PredefinedUrlCategoryResponse].
  /// [action] Required.
  /// [name] Required.
  PredefinedUrlCategoryResponse({
    required this.action,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'name': name,
    };
  }

  factory PredefinedUrlCategoryResponse.fromMap(Map<String, dynamic> map) {
    return PredefinedUrlCategoryResponse(
      action: map['action'] as String,
      name: map['name'] as String,
    );
  }
}

