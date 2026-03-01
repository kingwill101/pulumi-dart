// ignore_for_file: unused_element, unnecessary_cast


class StandardConnectionString {
  /// The name of the Connection String.
  final String name;
  /// The type of the Connection String. Possible values are `APIHub`, `Custom`, `DocDb`, `EventHub`, `MySQL`, `NotificationHub`, `PostgreSQL`, `RedisCache`, `ServiceBus`, `SQLAzure` and `SQLServer`.
  final String type;
  /// The value for the Connection String.
  final String value;

  /// Creates a new [StandardConnectionString].
  /// [name] The name of the Connection String.
  /// [type] The type of the Connection String. Possible values are `APIHub`, `Custom`, `DocDb`, `EventHub`, `MySQL`, `NotificationHub`, `PostgreSQL`, `RedisCache`, `ServiceBus`, `SQLAzure` and `SQLServer`.
  /// [value] The value for the Connection String.
  StandardConnectionString({
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

  factory StandardConnectionString.fromMap(Map<String, dynamic> map) {
    return StandardConnectionString(
      name: map['name'] as String,
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}

