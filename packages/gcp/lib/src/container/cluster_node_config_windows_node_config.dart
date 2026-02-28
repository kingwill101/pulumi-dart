// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodeConfigWindowsNodeConfig {
  /// The OS Version of the windows nodepool.Values are OS_VERSION_UNSPECIFIED,OS_VERSION_LTSC2019 and OS_VERSION_LTSC2022
  final String? osversion;

  /// Creates a new [ClusterNodeConfigWindowsNodeConfig].
  /// [osversion] The OS Version of the windows nodepool.Values are OS_VERSION_UNSPECIFIED,OS_VERSION_LTSC2019 and OS_VERSION_LTSC2022
  ClusterNodeConfigWindowsNodeConfig({
    this.osversion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final osversionValue = osversion;
    if (osversionValue != null) {
      map['osversion'] = osversionValue;
    }
    return map;
  }

  factory ClusterNodeConfigWindowsNodeConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigWindowsNodeConfig(
      osversion: map['osversion'] == null ? null : map['osversion'] as String,
    );
  }
}
