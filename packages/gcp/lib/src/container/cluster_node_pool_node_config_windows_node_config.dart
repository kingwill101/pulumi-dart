// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodePoolNodeConfigWindowsNodeConfig {
  /// The OS Version of the windows nodepool.Values are OS_VERSION_UNSPECIFIED,OS_VERSION_LTSC2019 and OS_VERSION_LTSC2022
  final String? osversion;

  /// Creates a new [ClusterNodePoolNodeConfigWindowsNodeConfig].
  /// [osversion] The OS Version of the windows nodepool.Values are OS_VERSION_UNSPECIFIED,OS_VERSION_LTSC2019 and OS_VERSION_LTSC2022
  ClusterNodePoolNodeConfigWindowsNodeConfig({this.osversion});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'osversion': ?osversion};
  }

  factory ClusterNodePoolNodeConfigWindowsNodeConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterNodePoolNodeConfigWindowsNodeConfig(
      osversion: map['osversion'] == null ? null : map['osversion'] as String,
    );
  }
}
