// ignore_for_file: unused_element, unnecessary_cast


class DiJobDestinationDataSourceSetting {
  /// Destination data source name
  final String? dataSourceName;

  /// Creates a new [DiJobDestinationDataSourceSetting].
  /// [dataSourceName] Destination data source name
  DiJobDestinationDataSourceSetting({
    this.dataSourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSourceName': ?dataSourceName,
    };
  }

  factory DiJobDestinationDataSourceSetting.fromMap(Map<String, dynamic> map) {
    return DiJobDestinationDataSourceSetting(
      dataSourceName: map['dataSourceName'] == null ? null : map['dataSourceName'] as String,
    );
  }
}

