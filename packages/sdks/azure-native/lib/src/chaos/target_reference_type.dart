import 'package:pulumi/pulumi.dart' as pulumi;

/// Enum of the Target reference type.
enum TargetReferenceType implements pulumi.PulumiEnum<String> {
  valueChaosTarget("ChaosTarget");

  const TargetReferenceType(this.wireValue);
  @override
  final String wireValue;

  static TargetReferenceType fromValue(String value) {
    for (final item in TargetReferenceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetReferenceType value: $value');
  }
}
