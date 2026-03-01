/// ActiveRevisionsMode controls how active revisions are handled for the Container app:
/// <list><item>Single: Only one revision can be active at a time. Traffic weights cannot be used. This is the default.</item><item>Multiple: Multiple revisions can be active, including optional traffic weights and labels.</item><item>Labels: Only revisions with labels are active. Traffic weights can be applied to labels.</item></list>
enum ActiveRevisionsMode {
  valueMultiple("Multiple"),
  valueSingle("Single"),
  valueLabels("Labels");

  const ActiveRevisionsMode(this.value);
  final String value;

  static ActiveRevisionsMode fromValue(String value) {
    for (final item in ActiveRevisionsMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ActiveRevisionsMode value: $value');
  }
}

