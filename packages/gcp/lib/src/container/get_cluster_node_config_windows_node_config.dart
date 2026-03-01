// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodeConfigWindowsNodeConfig {
  /// The OS Version of the windows nodepool.Values are OS_VERSION_UNSPECIFIED,OS_VERSION_LTSC2019 and OS_VERSION_LTSC2022
  final String osversion;

  /// Creates a new [GetClusterNodeConfigWindowsNodeConfig].
  /// [osversion] The OS Version of the windows nodepool.Values are OS_VERSION_UNSPECIFIED,OS_VERSION_LTSC2019 and OS_VERSION_LTSC2022
  GetClusterNodeConfigWindowsNodeConfig({required this.osversion});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'osversion': osversion};
  }

  factory GetClusterNodeConfigWindowsNodeConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterNodeConfigWindowsNodeConfig(
      osversion: map['osversion'] as String,
    );
  }
}
