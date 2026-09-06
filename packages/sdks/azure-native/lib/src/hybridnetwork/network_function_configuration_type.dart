import 'package:pulumi/pulumi.dart' as pulumi;

/// The value which indicates if NF  values are secrets
enum NetworkFunctionConfigurationType implements pulumi.PulumiEnum<String> {
  valueUnknown("Unknown"),
  valueSecret("Secret"),
  valueOpen("Open");

  const NetworkFunctionConfigurationType(this.wireValue);
  @override
  final String wireValue;

  static NetworkFunctionConfigurationType fromValue(String value) {
    for (final item in NetworkFunctionConfigurationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkFunctionConfigurationType value: $value');
  }
}
