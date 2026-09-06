import 'package:pulumi/pulumi.dart' as pulumi;

/// The grain of the commitment.
enum CommitmentGrain implements pulumi.PulumiEnum<String> {
  hourly("Hourly"),
  fullTerm("FullTerm"),
  unknown("Unknown");

  const CommitmentGrain(this.wireValue);
  @override
  final String wireValue;

  static CommitmentGrain fromValue(String value) {
    for (final item in CommitmentGrain.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CommitmentGrain value: $value');
  }
}
