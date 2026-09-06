import 'package:pulumi/pulumi.dart' as pulumi;

/// The commitment tier for the next month.
enum TierType implements pulumi.PulumiEnum<String> {
  valueConsumption("Consumption"),
  valueCommitment100AUHours("Commitment_100AUHours"),
  valueCommitment500AUHours("Commitment_500AUHours"),
  valueCommitment1000AUHours("Commitment_1000AUHours"),
  valueCommitment5000AUHours("Commitment_5000AUHours"),
  valueCommitment10000AUHours("Commitment_10000AUHours"),
  valueCommitment50000AUHours("Commitment_50000AUHours"),
  valueCommitment100000AUHours("Commitment_100000AUHours"),
  valueCommitment500000AUHours("Commitment_500000AUHours");

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
