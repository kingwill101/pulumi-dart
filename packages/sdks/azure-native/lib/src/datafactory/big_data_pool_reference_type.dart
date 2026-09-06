import 'package:pulumi/pulumi.dart' as pulumi;

/// Big data pool reference type.
enum BigDataPoolReferenceType implements pulumi.PulumiEnum<String> {
  bigDataPoolReference("BigDataPoolReference");

  const BigDataPoolReferenceType(this.wireValue);
  @override
  final String wireValue;

  static BigDataPoolReferenceType fromValue(String value) {
    for (final item in BigDataPoolReferenceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BigDataPoolReferenceType value: $value');
  }
}
