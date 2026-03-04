/// Kafka Auth Type
enum AuthType {
  sERVICEACCOUNT("SERVICE_ACCOUNT"),
  kAFKAAPIKEY("KAFKA_API_KEY");

  const AuthType(this.wireValue);
  final String wireValue;

  static AuthType fromValue(String value) {
    for (final item in AuthType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthType value: $value');
  }
}
