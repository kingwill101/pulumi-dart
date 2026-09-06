import 'package:pulumi/pulumi.dart' as pulumi;

/// The kind of the resource.
enum KnownDataCollectionRuleResourceKind implements pulumi.PulumiEnum<String> {
  valueLinux("Linux"),
  valueWindows("Windows");

  const KnownDataCollectionRuleResourceKind(this.wireValue);
  @override
  final String wireValue;

  static KnownDataCollectionRuleResourceKind fromValue(String value) {
    for (final item in KnownDataCollectionRuleResourceKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KnownDataCollectionRuleResourceKind value: $value');
  }
}
