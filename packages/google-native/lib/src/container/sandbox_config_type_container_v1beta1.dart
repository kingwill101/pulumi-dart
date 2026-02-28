/// Type of the sandbox to use for the node.
enum SandboxConfigTypeContainerV1beta1 {
  unspecified("UNSPECIFIED"),
  gvisor("GVISOR");

  const SandboxConfigTypeContainerV1beta1(this.value);
  final String value;

  static SandboxConfigTypeContainerV1beta1 fromValue(String value) {
    for (final item in SandboxConfigTypeContainerV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SandboxConfigTypeContainerV1beta1 value: $value');
  }
}

