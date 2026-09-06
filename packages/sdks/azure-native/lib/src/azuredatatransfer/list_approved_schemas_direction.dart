import 'package:pulumi/pulumi.dart' as pulumi;

/// The direction pipeline to filter approved schemas.
enum ListApprovedSchemasDirection implements pulumi.PulumiEnum<String> {
  valueSend("Send"),
  valueReceive("Receive");

  const ListApprovedSchemasDirection(this.wireValue);
  @override
  final String wireValue;

  static ListApprovedSchemasDirection fromValue(String value) {
    for (final item in ListApprovedSchemasDirection.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ListApprovedSchemasDirection value: $value');
  }
}
