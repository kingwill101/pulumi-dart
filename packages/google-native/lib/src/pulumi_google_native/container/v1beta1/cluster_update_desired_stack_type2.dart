/// The desired stack type of the cluster. If a stack type is provided and does not match the current stack type of the cluster, update will attempt to change the stack type to the new type.
enum ClusterUpdateDesiredStackType2 {
  stackTypeUnspecified("STACK_TYPE_UNSPECIFIED"),
  ipv4("IPV4"),
  ipv4Ipv6("IPV4_IPV6");

  const ClusterUpdateDesiredStackType2(this.value);
  final String value;

  static ClusterUpdateDesiredStackType2 fromValue(String value) {
    for (final item in ClusterUpdateDesiredStackType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterUpdateDesiredStackType2 value: $value');
  }
}
