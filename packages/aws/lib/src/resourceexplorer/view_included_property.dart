// ignore_for_file: unused_element, unnecessary_cast

class ViewIncludedProperty {
  /// The name of the property that is included in this view. Valid values: `tags`.
  final String name;

  /// Creates a new [ViewIncludedProperty].
  /// [name] The name of the property that is included in this view. Valid values: `tags`.
  ViewIncludedProperty({required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory ViewIncludedProperty.fromMap(Map<String, dynamic> map) {
    return ViewIncludedProperty(name: map['name'] as String);
  }
}
