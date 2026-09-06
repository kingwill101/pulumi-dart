import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of this referenced entity.
enum IntegrationRuntimeEntityReferenceType implements pulumi.PulumiEnum<String> {
  integrationRuntimeReference("IntegrationRuntimeReference"),
  linkedServiceReference("LinkedServiceReference");

  const IntegrationRuntimeEntityReferenceType(this.wireValue);
  @override
  final String wireValue;

  static IntegrationRuntimeEntityReferenceType fromValue(String value) {
    for (final item in IntegrationRuntimeEntityReferenceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IntegrationRuntimeEntityReferenceType value: $value');
  }
}
