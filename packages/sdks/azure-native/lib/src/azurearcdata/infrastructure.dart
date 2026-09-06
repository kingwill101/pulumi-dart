import 'package:pulumi/pulumi.dart' as pulumi;

/// The infrastructure the data controller is running on.
enum Infrastructure implements pulumi.PulumiEnum<String> {
  valueAzure("azure"),
  valueGcp("gcp"),
  valueAws("aws"),
  valueAlibaba("alibaba"),
  valueOnpremises("onpremises"),
  valueOther("other");

  const Infrastructure(this.wireValue);
  @override
  final String wireValue;

  static Infrastructure fromValue(String value) {
    for (final item in Infrastructure.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Infrastructure value: $value');
  }
}
