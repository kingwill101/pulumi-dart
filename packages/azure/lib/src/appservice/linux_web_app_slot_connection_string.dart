// ignore_for_file: unused_element, unnecessary_cast


class LinuxWebAppSlotConnectionString {
  /// The name of the Connection String.
  final String name;
  /// Type of database. Possible values include `APIHub`, `Custom`, `DocDb`, `EventHub`, `MySQL`, `NotificationHub`, `PostgreSQL`, `RedisCache`, `ServiceBus`, `SQLAzure`, and `SQLServer`.
  final String type;
  /// The connection string value.
  final String value;

  /// Creates a new [LinuxWebAppSlotConnectionString].
  /// [name] The name of the Connection String.
  /// [type] Type of database. Possible values include `APIHub`, `Custom`, `DocDb`, `EventHub`, `MySQL`, `NotificationHub`, `PostgreSQL`, `RedisCache`, `ServiceBus`, `SQLAzure`, and `SQLServer`.
  /// [value] The connection string value.
  LinuxWebAppSlotConnectionString({
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

  factory LinuxWebAppSlotConnectionString.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppSlotConnectionString(
      name: map['name'] as String,
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}

