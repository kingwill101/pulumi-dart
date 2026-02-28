/// cgroup_mode specifies the cgroup mode to be used on the node.
enum LinuxNodeConfigCgroupMode {
  cgroupModeUnspecified("CGROUP_MODE_UNSPECIFIED"),
  cgroupModeV1("CGROUP_MODE_V1"),
  cgroupModeV2("CGROUP_MODE_V2");

  const LinuxNodeConfigCgroupMode(this.value);
  final String value;

  static LinuxNodeConfigCgroupMode fromValue(String value) {
    for (final item in LinuxNodeConfigCgroupMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LinuxNodeConfigCgroupMode value: $value');
  }
}

