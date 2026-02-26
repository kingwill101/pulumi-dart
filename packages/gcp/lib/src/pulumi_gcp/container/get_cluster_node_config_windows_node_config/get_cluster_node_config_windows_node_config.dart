// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodeConfigWindowsNodeConfig {
  /// The OS Version of the windows nodepool.Values are OS_VERSION_UNSPECIFIED,OS_VERSION_LTSC2019 and OS_VERSION_LTSC2022
  final String osversion;

  GetClusterNodeConfigWindowsNodeConfig({
    required this.osversion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['osversion'] = osversion;
    return map;
  }

  factory GetClusterNodeConfigWindowsNodeConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodeConfigWindowsNodeConfig(
      osversion: map['osversion'] as String,
    );
  }
}
