/// The message filter type.
enum MessageFilterType {
  valueNotSpecified("NotSpecified"),
  valueInclude("Include"),
  valueExclude("Exclude");

  const MessageFilterType(this.value);
  final String value;

  static MessageFilterType fromValue(String value) {
    for (final item in MessageFilterType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MessageFilterType value: $value');
  }
}

