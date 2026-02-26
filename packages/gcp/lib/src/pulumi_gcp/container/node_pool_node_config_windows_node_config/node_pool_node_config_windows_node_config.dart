// ignore_for_file: unused_element, unnecessary_cast

class NodePoolNodeConfigWindowsNodeConfig {
  /// The OS Version of the windows nodepool.Values are OS_VERSION_UNSPECIFIED,OS_VERSION_LTSC2019 and OS_VERSION_LTSC2022
  final String? osversion;

  NodePoolNodeConfigWindowsNodeConfig({
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

  factory NodePoolNodeConfigWindowsNodeConfig.fromMap(
      Map<String, dynamic> map) {
    return NodePoolNodeConfigWindowsNodeConfig(
      osversion: map['osversion'] == null ? null : map['osversion'] as String,
    );
  }
}
