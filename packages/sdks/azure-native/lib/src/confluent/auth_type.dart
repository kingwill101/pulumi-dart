/// Kafka Auth Type
enum AuthType {
  sERVICEACCOUNT("SERVICE_ACCOUNT"),
  kAFKAAPIKEY("KAFKA_API_KEY");

  const AuthType(this.value);
  final String value;

  static AuthType fromValue(String value) {
    for (final item in AuthType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthType value: $value');
  }
}

