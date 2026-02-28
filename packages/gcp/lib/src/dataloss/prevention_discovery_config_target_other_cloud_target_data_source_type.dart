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
    final map = <String, dynamic>{};
    final dataSourceValue = dataSource;
    if (dataSourceValue != null) {
      map['dataSource'] = dataSourceValue;
    }
    return map;
  }

  factory PreventionDiscoveryConfigTargetOtherCloudTargetDataSourceType.fromMap(
      Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetOtherCloudTargetDataSourceType(
      dataSource:
          map['dataSource'] == null ? null : map['dataSource'] as String,
    );
  }
}
