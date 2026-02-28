// ignore_for_file: unused_element, unnecessary_cast

class NodePoolNodeConfigLinuxNodeConfigHugepagesConfig {
  /// Amount of 1G hugepages.
  final int? hugepageSize1g;

  /// Amount of 2M hugepages.
  final int? hugepageSize2m;

  /// Creates a new [NodePoolNodeConfigLinuxNodeConfigHugepagesConfig].
  /// [hugepageSize1g] Amount of 1G hugepages.
  /// [hugepageSize2m] Amount of 2M hugepages.
  NodePoolNodeConfigLinuxNodeConfigHugepagesConfig({
    this.hugepageSize1g,
    this.hugepageSize2m,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hugepageSize1gValue = hugepageSize1g;
    if (hugepageSize1gValue != null) {
      map['hugepageSize1g'] = hugepageSize1gValue;
    }
    final hugepageSize2mValue = hugepageSize2m;
    if (hugepageSize2mValue != null) {
      map['hugepageSize2m'] = hugepageSize2mValue;
    }
    return map;
  }

  factory NodePoolNodeConfigLinuxNodeConfigHugepagesConfig.fromMap(
      Map<String, dynamic> map) {
    return NodePoolNodeConfigLinuxNodeConfigHugepagesConfig(
      hugepageSize1g:
          map['hugepageSize1g'] == null ? null : map['hugepageSize1g'] as int,
      hugepageSize2m:
          map['hugepageSize2m'] == null ? null : map['hugepageSize2m'] as int,
    );
  }
}
