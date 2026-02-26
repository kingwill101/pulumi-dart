/// Type of the sandbox to use for the node.
enum SandboxConfigType2 {
  unspecified("UNSPECIFIED"),
  gvisor("GVISOR");

  const SandboxConfigType2(this.value);
  final String value;

  static SandboxConfigType2 fromValue(String value) {
    for (final item in SandboxConfigType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SandboxConfigType2 value: $value');
  }
}
