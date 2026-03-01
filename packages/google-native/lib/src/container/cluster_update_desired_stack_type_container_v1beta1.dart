/// The desired stack type of the cluster. If a stack type is provided and does not match the current stack type of the cluster, update will attempt to change the stack type to the new type.
enum ClusterUpdateDesiredStackTypeContainerV1beta1 {
  stackTypeUnspecified("STACK_TYPE_UNSPECIFIED"),
  ipv4("IPV4"),
  ipv4Ipv6("IPV4_IPV6");

  const ClusterUpdateDesiredStackTypeContainerV1beta1(this.value);
  final String value;

  static ClusterUpdateDesiredStackTypeContainerV1beta1 fromValue(String value) {
    for (final item in ClusterUpdateDesiredStackTypeContainerV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ClusterUpdateDesiredStackTypeContainerV1beta1 value: $value',
    );
  }
}
