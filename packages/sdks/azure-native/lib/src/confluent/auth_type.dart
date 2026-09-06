import 'package:pulumi/pulumi.dart' as pulumi;

/// Kafka Auth Type
enum AuthType implements pulumi.PulumiEnum<String> {
  sERVICEACCOUNT("SERVICE_ACCOUNT"),
  kAFKAAPIKEY("KAFKA_API_KEY");

  const AuthType(this.wireValue);
  @override
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
