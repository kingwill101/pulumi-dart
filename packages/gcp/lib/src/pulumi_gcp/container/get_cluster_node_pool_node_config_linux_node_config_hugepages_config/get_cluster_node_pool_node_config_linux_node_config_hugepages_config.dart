// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodePoolNodeConfigLinuxNodeConfigHugepagesConfig {
  /// Amount of 1G hugepages.
  final int hugepageSize1g;

  /// Amount of 2M hugepages.
  final int hugepageSize2m;

  GetClusterNodePoolNodeConfigLinuxNodeConfigHugepagesConfig({
    required this.hugepageSize1g,
    required this.hugepageSize2m,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hugepageSize1g'] = hugepageSize1g;
    map['hugepageSize2m'] = hugepageSize2m;
    return map;
  }

  factory GetClusterNodePoolNodeConfigLinuxNodeConfigHugepagesConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigLinuxNodeConfigHugepagesConfig(
      hugepageSize1g: map['hugepageSize1g'] as int,
      hugepageSize2m: map['hugepageSize2m'] as int,
    );
  }
}
