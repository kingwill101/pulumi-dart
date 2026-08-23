/// The message filter type.
enum MessageFilterType {
  valueNotSpecified("NotSpecified"),
  valueInclude("Include"),
  valueExclude("Exclude");

  const MessageFilterType(this.wireValue);
  final String wireValue;

  static MessageFilterType fromValue(String value) {
    for (final item in MessageFilterType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MessageFilterType value: $value');
  }
}
