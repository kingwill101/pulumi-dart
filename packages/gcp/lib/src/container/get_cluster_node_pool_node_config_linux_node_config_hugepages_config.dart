// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodePoolNodeConfigLinuxNodeConfigHugepagesConfig {
  /// Amount of 1G hugepages.
  final int hugepageSize1g;

  /// Amount of 2M hugepages.
  final int hugepageSize2m;

  /// Creates a new [GetClusterNodePoolNodeConfigLinuxNodeConfigHugepagesConfig].
  /// [hugepageSize1g] Amount of 1G hugepages.
  /// [hugepageSize2m] Amount of 2M hugepages.
  GetClusterNodePoolNodeConfigLinuxNodeConfigHugepagesConfig({
    required this.hugepageSize1g,
    required this.hugepageSize2m,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hugepageSize1g': hugepageSize1g,
      'hugepageSize2m': hugepageSize2m,
    };
  }

  factory GetClusterNodePoolNodeConfigLinuxNodeConfigHugepagesConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterNodePoolNodeConfigLinuxNodeConfigHugepagesConfig(
      hugepageSize1g: map['hugepageSize1g'] as int,
      hugepageSize2m: map['hugepageSize2m'] as int,
    );
  }
}
