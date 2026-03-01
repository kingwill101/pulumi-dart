/// Valid actions for a filtering tag.
enum TagAction {
  valueInclude("Include"),
  valueExclude("Exclude");

  const TagAction(this.value);
  final String value;

  static TagAction fromValue(String value) {
    for (final item in TagAction.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TagAction value: $value');
  }
}

