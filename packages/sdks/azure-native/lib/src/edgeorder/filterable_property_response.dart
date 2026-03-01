// ignore_for_file: unused_element, unnecessary_cast


/// Different types of filters supported and its values.
class FilterablePropertyResponse {
  /// Values to be filtered.
  final List<String> supportedValues;
  /// Type of product filter.
  final String type;

  /// Creates a new [FilterablePropertyResponse].
  /// [supportedValues] Values to be filtered.
  /// [type] Type of product filter.
  FilterablePropertyResponse({
    required this.supportedValues,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'supportedValues': supportedValues,
      'type': type,
    };
  }

  factory FilterablePropertyResponse.fromMap(Map<String, dynamic> map) {
    return FilterablePropertyResponse(
      supportedValues: (map['supportedValues'] as List).cast<String>(),
      type: map['type'] as String,
    );
  }
}

