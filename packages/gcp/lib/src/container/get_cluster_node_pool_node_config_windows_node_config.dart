// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodePoolNodeConfigWindowsNodeConfig {
  /// The OS Version of the windows nodepool.Values are OS_VERSION_UNSPECIFIED,OS_VERSION_LTSC2019 and OS_VERSION_LTSC2022
  final String osversion;

  /// Creates a new [GetClusterNodePoolNodeConfigWindowsNodeConfig].
  /// [osversion] The OS Version of the windows nodepool.Values are OS_VERSION_UNSPECIFIED,OS_VERSION_LTSC2019 and OS_VERSION_LTSC2022
  GetClusterNodePoolNodeConfigWindowsNodeConfig({
    required this.osversion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['osversion'] = osversion;
    return map;
  }

  factory GetClusterNodePoolNodeConfigWindowsNodeConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigWindowsNodeConfig(
      osversion: map['osversion'] as String,
    );
  }
}
