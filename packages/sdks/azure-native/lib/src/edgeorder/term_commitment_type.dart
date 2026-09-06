import 'package:pulumi/pulumi.dart' as pulumi;

/// Term Commitment Type
enum TermCommitmentType implements pulumi.PulumiEnum<String> {
  none("None"),
  trial("Trial"),
  timed("Timed");

  const TermCommitmentType(this.wireValue);
  @override
  final String wireValue;

  static TermCommitmentType fromValue(String value) {
    for (final item in TermCommitmentType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TermCommitmentType value: $value');
  }
}
