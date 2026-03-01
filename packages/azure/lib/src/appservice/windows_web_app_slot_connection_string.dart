// ignore_for_file: unused_element, unnecessary_cast


class WindowsWebAppSlotConnectionString {
  /// The name of the connection String.
  final String name;
  /// Type of database. Possible values include: `APIHub`, `Custom`, `DocDb`, `EventHub`, `MySQL`, `NotificationHub`, `PostgreSQL`, `RedisCache`, `ServiceBus`, `SQLAzure`, and `SQLServer`.
  final String type;
  /// The connection string value.
  final String value;

  /// Creates a new [WindowsWebAppSlotConnectionString].
  /// [name] The name of the connection String.
  /// [type] Type of database. Possible values include: `APIHub`, `Custom`, `DocDb`, `EventHub`, `MySQL`, `NotificationHub`, `PostgreSQL`, `RedisCache`, `ServiceBus`, `SQLAzure`, and `SQLServer`.
  /// [value] The connection string value.
  WindowsWebAppSlotConnectionString({
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

  factory WindowsWebAppSlotConnectionString.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSlotConnectionString(
      name: map['name'] as String,
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}

