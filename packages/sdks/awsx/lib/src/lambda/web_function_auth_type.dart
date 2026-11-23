import 'package:pulumi/pulumi.dart' as pulumi;

enum WebFunctionAuthType implements pulumi.PulumiEnum<String> {
  iAM("IamAuth"),
  aPPLICATIONMANAGED("ApplicationManaged");

  const WebFunctionAuthType(this.wireValue);
  @override
  final String wireValue;

  static WebFunctionAuthType fromValue(String value) {
    for (final item in WebFunctionAuthType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebFunctionAuthType value: $value');
  }
}
