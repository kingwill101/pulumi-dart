import 'package:pulumi/pulumi.dart' as pulumi;

/// The multi-factor authorization provider to be used for just-in-time access requests.
enum MultiFactorAuthProvider implements pulumi.PulumiEnum<String> {
  valueAzure("Azure"),
  valueNone("None");

  const MultiFactorAuthProvider(this.wireValue);
  @override
  final String wireValue;

  static MultiFactorAuthProvider fromValue(String value) {
    for (final item in MultiFactorAuthProvider.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MultiFactorAuthProvider value: $value');
  }
}
