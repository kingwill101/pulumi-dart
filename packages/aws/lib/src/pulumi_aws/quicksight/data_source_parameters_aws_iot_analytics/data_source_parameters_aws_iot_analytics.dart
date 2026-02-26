// ignore_for_file: unused_element, unnecessary_cast

class DataSourceParametersAwsIotAnalytics {
  /// The name of the data set to which to connect.
  final String dataSetName;

  DataSourceParametersAwsIotAnalytics({
    required this.dataSetName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataSetName'] = dataSetName;
    return map;
  }

  factory DataSourceParametersAwsIotAnalytics.fromMap(
      Map<String, dynamic> map) {
    return DataSourceParametersAwsIotAnalytics(
      dataSetName: map['dataSetName'] as String,
    );
  }
}
