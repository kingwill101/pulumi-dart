import 'package:pulumi/pulumi.dart' as pulumi;

/// The Compute Instance Authorization type. Available values are personal (default).
enum ComputeInstanceAuthorizationType implements pulumi.PulumiEnum<String> {
  personal("personal");

  const ComputeInstanceAuthorizationType(this.wireValue);
  @override
  final String wireValue;

  static ComputeInstanceAuthorizationType fromValue(String value) {
    for (final item in ComputeInstanceAuthorizationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComputeInstanceAuthorizationType value: $value');
  }
}
