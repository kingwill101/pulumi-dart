/// cgroup_mode specifies the cgroup mode to be used on the node.
enum LinuxNodeConfigCgroupMode2 {
  cgroupModeUnspecified("CGROUP_MODE_UNSPECIFIED"),
  cgroupModeV1("CGROUP_MODE_V1"),
  cgroupModeV2("CGROUP_MODE_V2");

  const LinuxNodeConfigCgroupMode2(this.value);
  final String value;

  static LinuxNodeConfigCgroupMode2 fromValue(String value) {
    for (final item in LinuxNodeConfigCgroupMode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LinuxNodeConfigCgroupMode2 value: $value');
  }
}
