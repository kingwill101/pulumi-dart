import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum HttpTokensState implements pulumi.PulumiEnum<String> {
  optional("optional"),
  required("required");

  const HttpTokensState(this.wireValue);
  @override
  final String wireValue;

  static HttpTokensState fromValue(String value) {
    for (final item in HttpTokensState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HttpTokensState value: $value');
  }
}
