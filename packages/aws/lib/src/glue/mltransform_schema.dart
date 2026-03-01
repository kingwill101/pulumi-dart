// ignore_for_file: unused_element, unnecessary_cast


class MLTransformSchema {
  /// The type of data in the column.
  final String? dataType;
  /// The name you assign to this ML Transform. It must be unique in your account.
  final String? name;

  /// Creates a new [MLTransformSchema].
  /// [dataType] The type of data in the column.
  /// [name] The name you assign to this ML Transform. It must be unique in your account.
  MLTransformSchema({
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
      dataType: map['dataType'] == null ? null : map['dataType'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

