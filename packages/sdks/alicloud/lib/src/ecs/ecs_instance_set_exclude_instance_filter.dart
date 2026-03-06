// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EcsInstanceSetExcludeInstanceFilter {
  /// The type of the excluded. Valid values: `InstanceId`, `InstanceName`.
  final pulumi.Input<String> key;
  /// The value of the excluded. The identification of the excluded instances. It is a list of instance Ids or names.
  final pulumi.Input<List<String>> values;

  /// Creates a new [EcsInstanceSetExcludeInstanceFilter].
  /// [key] The type of the excluded. Valid values: `InstanceId`, `InstanceName`.
  /// [values] The value of the excluded. The identification of the excluded instances. It is a list of instance Ids or names.
  const EcsInstanceSetExcludeInstanceFilter({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'values': values,
    };
  }

  factory EcsInstanceSetExcludeInstanceFilter.fromMap(Map<String, dynamic> map) {
    return EcsInstanceSetExcludeInstanceFilter(
      key: pulumi.Input.fromValue(map['key'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

