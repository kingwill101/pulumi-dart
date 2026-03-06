// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetProjectsProjectPropertiesTableLifecycle {
  /// Project type
  final pulumi.Input<String> type;
  /// The value of the life cycle, in days. The value range is 1~37231, and the default value is 37231.
  final pulumi.Input<String> value;

  /// Creates a new [GetProjectsProjectPropertiesTableLifecycle].
  /// [type] Project type
  /// [value] The value of the life cycle, in days. The value range is 1~37231, and the default value is 37231.
  const GetProjectsProjectPropertiesTableLifecycle({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': value,
    };
  }

  factory GetProjectsProjectPropertiesTableLifecycle.fromMap(Map<String, dynamic> map) {
    return GetProjectsProjectPropertiesTableLifecycle(
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

