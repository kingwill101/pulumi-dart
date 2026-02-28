// ignore_for_file: unused_element, unnecessary_cast

class SearchResourceProperty {
  /// Details about this property. The content of this field is a JSON object that varies based on the resource type.
  final String data;

  /// The date and time that the information about this resource property was last updated.
  final String lastReportedAt;

  /// Name of this property of the resource.
  final String name;

  /// Creates a new [SearchResourceProperty].
  /// [data] Details about this property. The content of this field is a JSON object that varies based on the resource type.
  /// [lastReportedAt] The date and time that the information about this resource property was last updated.
  /// [name] Name of this property of the resource.
  SearchResourceProperty({
    required this.data,
    required this.lastReportedAt,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['data'] = data;
    map['lastReportedAt'] = lastReportedAt;
    map['name'] = name;
    return map;
  }

  factory SearchResourceProperty.fromMap(Map<String, dynamic> map) {
    return SearchResourceProperty(
      data: map['data'] as String,
      lastReportedAt: map['lastReportedAt'] as String,
      name: map['name'] as String,
    );
  }
}
