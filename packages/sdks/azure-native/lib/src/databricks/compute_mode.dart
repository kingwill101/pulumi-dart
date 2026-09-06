import 'package:pulumi/pulumi.dart' as pulumi;

/// The workspace compute mode. Required on create, cannot be changed. Possible values include: 'Serverless', 'Hybrid'
enum ComputeMode implements pulumi.PulumiEnum<String> {
  serverless("Serverless"),
  hybrid("Hybrid");

  const ComputeMode(this.wireValue);
  @override
  final String wireValue;

  static ComputeMode fromValue(String value) {
    for (final item in ComputeMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComputeMode value: $value');
  }
}
