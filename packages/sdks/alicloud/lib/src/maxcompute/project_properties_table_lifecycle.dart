// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectPropertiesTableLifecycle {
  /// Project type
  final pulumi.Input<String>? type;
  /// The value of the life cycle, in days. The value range is 1~37231, and the default value is 37231.
  final pulumi.Input<String>? value;

  /// Creates a new [ProjectPropertiesTableLifecycle].
  /// [type] Project type
  /// [value] The value of the life cycle, in days. The value range is 1~37231, and the default value is 37231.
  ProjectPropertiesTableLifecycle({
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'value': ?value,
    };
  }

  factory ProjectPropertiesTableLifecycle.fromMap(Map<String, dynamic> map) {
    return ProjectPropertiesTableLifecycle(
      type: map['type'] == null ? null : (map['type']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

