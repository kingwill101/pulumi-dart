import 'package:pulumi/pulumi.dart' as pulumi;

/// Evidence type.
enum EvidenceType implements pulumi.PulumiEnum<String> {
  file("File"),
  autoCollectedEvidence("AutoCollectedEvidence"),
  data("Data");

  const EvidenceType(this.wireValue);
  @override
  final String wireValue;

  static EvidenceType fromValue(String value) {
    for (final item in EvidenceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EvidenceType value: $value');
  }
}
