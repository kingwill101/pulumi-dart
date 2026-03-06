// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MLTransformSchema {
  /// The type of data in the column.
  final pulumi.Input<String>? dataType;
  /// The name you assign to this ML Transform. It must be unique in your account.
  final pulumi.Input<String>? name;

  /// Creates a new [MLTransformSchema].
  /// [dataType] The type of data in the column.
  /// [name] The name you assign to this ML Transform. It must be unique in your account.
  const MLTransformSchema({
    this.dataType,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataType': ?dataType,
      'name': ?name,
    };
  }

  factory MLTransformSchema.fromMap(Map<String, dynamic> map) {
    return MLTransformSchema(
      dataType: (() { final guardedValue = map['dataType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

