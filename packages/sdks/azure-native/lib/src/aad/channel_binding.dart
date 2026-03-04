/// A flag to determine whether or not ChannelBinding is enabled or disabled.
enum ChannelBinding {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const ChannelBinding(this.wireValue);
  final String wireValue;

  static ChannelBinding fromValue(String value) {
    for (final item in ChannelBinding.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ChannelBinding value: $value');
  }
}
