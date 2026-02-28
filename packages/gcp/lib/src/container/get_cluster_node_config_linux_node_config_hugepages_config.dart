// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodeConfigLinuxNodeConfigHugepagesConfig {
  /// Amount of 1G hugepages.
  final int hugepageSize1g;

  /// Amount of 2M hugepages.
  final int hugepageSize2m;

  /// Creates a new [GetClusterNodeConfigLinuxNodeConfigHugepagesConfig].
  /// [hugepageSize1g] Amount of 1G hugepages.
  /// [hugepageSize2m] Amount of 2M hugepages.
  GetClusterNodeConfigLinuxNodeConfigHugepagesConfig({
    required this.hugepageSize1g,
    required this.hugepageSize2m,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hugepageSize1g'] = hugepageSize1g;
    map['hugepageSize2m'] = hugepageSize2m;
    return map;
  }

  factory GetClusterNodeConfigLinuxNodeConfigHugepagesConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodeConfigLinuxNodeConfigHugepagesConfig(
      hugepageSize1g: map['hugepageSize1g'] as int,
      hugepageSize2m: map['hugepageSize2m'] as int,
    );
  }
}
