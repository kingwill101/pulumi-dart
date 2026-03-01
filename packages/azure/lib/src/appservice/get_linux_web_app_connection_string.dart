// ignore_for_file: unused_element, unnecessary_cast


class GetLinuxWebAppConnectionString {
  /// The name of this Linux Web App.
  final String name;
  /// The Azure Storage Type.
  final String type;
  /// The Connection String value.
  final String value;

  /// Creates a new [GetLinuxWebAppConnectionString].
  /// [name] The name of this Linux Web App.
  /// [type] The Azure Storage Type.
  /// [value] The Connection String value.
  GetLinuxWebAppConnectionString({
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

  factory GetLinuxWebAppConnectionString.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppConnectionString(
      name: map['name'] as String,
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}

