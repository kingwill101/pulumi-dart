// ignore_for_file: unused_element, unnecessary_cast


/// The related metadata items for the function.
class LogAnalyticsQueryPackQueryPropertiesResponseRelated {
  /// The related categories for the function.
  final List<String>? categories;
  /// The related resource types for the function.
  final List<String>? resourceTypes;
  /// The related Log Analytics solutions for the function.
  final List<String>? solutions;

  /// Creates a new [LogAnalyticsQueryPackQueryPropertiesResponseRelated].
  /// [categories] The related categories for the function.
  /// [resourceTypes] The related resource types for the function.
  /// [solutions] The related Log Analytics solutions for the function.
  LogAnalyticsQueryPackQueryPropertiesResponseRelated({
    this.categories,
    this.resourceTypes,
    this.solutions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categories': ?categories,
      'resourceTypes': ?resourceTypes,
      'solutions': ?solutions,
    };
  }

  factory LogAnalyticsQueryPackQueryPropertiesResponseRelated.fromMap(Map<String, dynamic> map) {
    return LogAnalyticsQueryPackQueryPropertiesResponseRelated(
      categories: map['categories'] == null ? null : (map['categories'] as List).cast<String>(),
      resourceTypes: map['resourceTypes'] == null ? null : (map['resourceTypes'] as List).cast<String>(),
      solutions: map['solutions'] == null ? null : (map['solutions'] as List).cast<String>(),
    );
  }
}

