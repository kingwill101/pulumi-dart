import 'package:pulumi/pulumi.dart' as pulumi;

/// ActiveRevisionsMode controls how active revisions are handled for the Container app:
/// &lt;list&gt;&lt;item&gt;Single: Only one revision can be active at a time. Traffic weights cannot be used. This is the default.&lt;/item&gt;&lt;item&gt;Multiple: Multiple revisions can be active, including optional traffic weights and labels.&lt;/item&gt;&lt;item&gt;Labels: Only revisions with labels are active. Traffic weights can be applied to labels.&lt;/item&gt;&lt;/list&gt;
enum ActiveRevisionsMode implements pulumi.PulumiEnum<String> {
  valueMultiple("Multiple"),
  valueSingle("Single"),
  valueLabels("Labels");

  const ActiveRevisionsMode(this.wireValue);
  @override
  final String wireValue;

  static ActiveRevisionsMode fromValue(String value) {
    for (final item in ActiveRevisionsMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ActiveRevisionsMode value: $value');
  }
}
