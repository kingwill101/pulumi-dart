import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the user configurable setting to display the linux azure hybrid use
/// benefit.
enum AzureHybridUseBenefit implements pulumi.PulumiEnum<String> {
  unknown("Unknown"),
  yes("Yes"),
  no("No");

  const AzureHybridUseBenefit(this.wireValue);
  @override
  final String wireValue;

  static AzureHybridUseBenefit fromValue(String value) {
    for (final item in AzureHybridUseBenefit.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureHybridUseBenefit value: $value');
  }
}
