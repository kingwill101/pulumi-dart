// ignore_for_file: unused_element, unnecessary_cast

class MLTransformSchema {
  /// The type of data in the column.
  final String? dataType;

  /// The name you assign to this ML Transform. It must be unique in your account.
  final String? name;

  MLTransformSchema({
    this.dataType,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataTypeValue = dataType;
    if (dataTypeValue != null) {
      map['dataType'] = dataTypeValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory MLTransformSchema.fromMap(Map<String, dynamic> map) {
    return MLTransformSchema(
      dataType: map['dataType'] == null ? null : map['dataType'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
