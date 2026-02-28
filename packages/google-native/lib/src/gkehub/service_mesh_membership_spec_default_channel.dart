/// Determines which release channel to use for default injection and service mesh APIs.
enum ServiceMeshMembershipSpecDefaultChannel {
  channelUnspecified("CHANNEL_UNSPECIFIED"),
  rapid("RAPID"),
  regular("REGULAR"),
  stable("STABLE");

  const ServiceMeshMembershipSpecDefaultChannel(this.value);
  final String value;

  static ServiceMeshMembershipSpecDefaultChannel fromValue(String value) {
    for (final item in ServiceMeshMembershipSpecDefaultChannel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ServiceMeshMembershipSpecDefaultChannel value: $value');
  }
}
