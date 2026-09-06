import 'package:pulumi/pulumi.dart' as pulumi;

/// Trigger reference type.
enum TriggerReferenceType implements pulumi.PulumiEnum<String> {
  triggerReference("TriggerReference");

  const TriggerReferenceType(this.wireValue);
  @override
  final String wireValue;

  static TriggerReferenceType fromValue(String value) {
    for (final item in TriggerReferenceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TriggerReferenceType value: $value');
  }
}
