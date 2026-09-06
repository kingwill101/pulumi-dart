import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the mode of an upgrade to virtual machines in the scale set.&lt;br /&gt;&lt;br /&gt; Possible values are:&lt;br /&gt;&lt;br /&gt; **Manual** - You  control the application of updates to virtual machines in the scale set. You do this by using the manualUpgrade action.&lt;br /&gt;&lt;br /&gt; **Automatic** - All virtual machines in the scale set are automatically updated at the same time.&lt;br /&gt;&lt;br /&gt; **Rolling** - Scale set performs updates in batches with an optional pause time in between.
enum UpgradeMode implements pulumi.PulumiEnum<String> {
  automatic("automatic"),
  manual("manual"),
  rolling("rolling");

  const UpgradeMode(this.wireValue);
  @override
  final String wireValue;

  static UpgradeMode fromValue(String value) {
    for (final item in UpgradeMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UpgradeMode value: $value');
  }
}
