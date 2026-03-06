// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSourceParametersAwsIotAnalytics {
  /// The name of the data set to which to connect.
  final pulumi.Input<String> dataSetName;

  /// Creates a new [DataSourceParametersAwsIotAnalytics].
  /// [dataSetName] The name of the data set to which to connect.
  const DataSourceParametersAwsIotAnalytics({
    required this.dataSetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSetName': dataSetName,
    };
  }

  factory DataSourceParametersAwsIotAnalytics.fromMap(Map<String, dynamic> map) {
    return DataSourceParametersAwsIotAnalytics(
      dataSetName: pulumi.Input.fromValue(map['dataSetName'] as String),
    );
  }
}

