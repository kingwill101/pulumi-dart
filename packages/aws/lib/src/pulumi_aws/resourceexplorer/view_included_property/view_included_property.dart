// ignore_for_file: unused_element, unnecessary_cast

class ViewIncludedProperty {
  /// The name of the property that is included in this view. Valid values: `tags`.
  final String name;

  ViewIncludedProperty({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory ViewIncludedProperty.fromMap(Map<String, dynamic> map) {
    return ViewIncludedProperty(
      name: map['name'] as String,
    );
  }
}
