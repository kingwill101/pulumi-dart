/// A flag to determine whether or not ChannelBinding is enabled or disabled.
enum ChannelBinding {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const ChannelBinding(this.value);
  final String value;

  static ChannelBinding fromValue(String value) {
    for (final item in ChannelBinding.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ChannelBinding value: $value');
  }
}

