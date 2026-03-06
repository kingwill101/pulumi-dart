// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ViewIncludedProperty {
  /// The name of the property that is included in this view. Valid values: `tags`.
  final pulumi.Input<String> name;

  /// Creates a new [ViewIncludedProperty].
  /// [name] The name of the property that is included in this view. Valid values: `tags`.
  const ViewIncludedProperty({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory ViewIncludedProperty.fromMap(Map<String, dynamic> map) {
    return ViewIncludedProperty(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

