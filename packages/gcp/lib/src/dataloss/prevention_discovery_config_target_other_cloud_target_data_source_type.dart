// ignore_for_file: unused_element, unnecessary_cast


class PreventionDiscoveryConfigTargetOtherCloudTargetDataSourceType {
  /// (Optional)
  final String? dataSource;

  /// Creates a new [PreventionDiscoveryConfigTargetOtherCloudTargetDataSourceType].
  /// [dataSource] (Optional)
  PreventionDiscoveryConfigTargetOtherCloudTargetDataSourceType({
    this.dataSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSource': ?dataSource,
    };
  }

  factory PreventionDiscoveryConfigTargetOtherCloudTargetDataSourceType.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetOtherCloudTargetDataSourceType(
      dataSource: map['dataSource'] == null ? null : map['dataSource'] as String,
    );
  }
}

