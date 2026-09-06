import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of integration runtime.
enum IntegrationRuntimeReferenceType implements pulumi.PulumiEnum<String> {
  integrationRuntimeReference("IntegrationRuntimeReference");

  const IntegrationRuntimeReferenceType(this.wireValue);
  @override
  final String wireValue;

  static IntegrationRuntimeReferenceType fromValue(String value) {
    for (final item in IntegrationRuntimeReferenceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IntegrationRuntimeReferenceType value: $value');
  }
}
