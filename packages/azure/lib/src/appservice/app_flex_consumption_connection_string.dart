// ignore_for_file: unused_element, unnecessary_cast


class AppFlexConsumptionConnectionString {
  /// The name which should be used for this Connection.
  final String name;
  /// Type of database. Possible values include: `MySQL`, `SQLServer`, `SQLAzure`, `Custom`, `NotificationHub`, `ServiceBus`, `EventHub`, `APIHub`, `DocDb`, `RedisCache`, and `PostgreSQL`.
  final String type;
  /// The connection string value.
  final String value;

  /// Creates a new [AppFlexConsumptionConnectionString].
  /// [name] The name which should be used for this Connection.
  /// [type] Type of database. Possible values include: `MySQL`, `SQLServer`, `SQLAzure`, `Custom`, `NotificationHub`, `ServiceBus`, `EventHub`, `APIHub`, `DocDb`, `RedisCache`, and `PostgreSQL`.
  /// [value] The connection string value.
  AppFlexConsumptionConnectionString({
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

  factory AppFlexConsumptionConnectionString.fromMap(Map<String, dynamic> map) {
    return AppFlexConsumptionConnectionString(
      name: map['name'] as String,
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}

