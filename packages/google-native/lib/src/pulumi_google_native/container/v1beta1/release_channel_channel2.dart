/// channel specifies which release channel the cluster is subscribed to.
enum ReleaseChannelChannel2 {
  unspecified("UNSPECIFIED"),
  rapid("RAPID"),
  regular("REGULAR"),
  stable("STABLE");

  const ReleaseChannelChannel2(this.value);
  final String value;

  static ReleaseChannelChannel2 fromValue(String value) {
    for (final item in ReleaseChannelChannel2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReleaseChannelChannel2 value: $value');
  }
}
