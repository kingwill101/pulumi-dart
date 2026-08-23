/// Valid actions for a filtering tag. Exclusion takes priority over inclusion.
enum TagAction {
  valueInclude("Include"),
  valueExclude("Exclude");

  const TagAction(this.wireValue);
  final String wireValue;

  static TagAction fromValue(String value) {
    for (final item in TagAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TagAction value: $value');
  }
}
