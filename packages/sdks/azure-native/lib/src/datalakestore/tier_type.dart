import 'package:pulumi/pulumi.dart' as pulumi;

/// The commitment tier to use for next month.
enum TierType implements pulumi.PulumiEnum<String> {
  valueConsumption("Consumption"),
  valueCommitment1TB("Commitment_1TB"),
  valueCommitment10TB("Commitment_10TB"),
  valueCommitment100TB("Commitment_100TB"),
  valueCommitment500TB("Commitment_500TB"),
  valueCommitment1PB("Commitment_1PB"),
  valueCommitment5PB("Commitment_5PB");

  const TierType(this.wireValue);
  @override
  final String wireValue;

  static TierType fromValue(String value) {
    for (final item in TierType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TierType value: $value');
  }
}
