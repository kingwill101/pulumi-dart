// ignore_for_file: unused_element, unnecessary_cast


class GetFunctionAppConnectionString {
  /// The name of the Function App resource.
  final String name;
  /// The identity type of the Managed Identity assigned to the Function App.
  final String type;
  /// The value for the Connection String.
  final String value;

  /// Creates a new [GetFunctionAppConnectionString].
  /// [name] The name of the Function App resource.
  /// [type] The identity type of the Managed Identity assigned to the Function App.
  /// [value] The value for the Connection String.
  GetFunctionAppConnectionString({
    required this.name,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
      'value': value,
    };
  }

  factory GetFunctionAppConnectionString.fromMap(Map<String, dynamic> map) {
    return GetFunctionAppConnectionString(
      name: map['name'] as String,
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}

