// ignore_for_file: unused_element, unnecessary_cast

class DataSourceLambdaConfig {
  /// ARN for the Lambda function.
  final String functionArn;

  /// Creates a new [DataSourceLambdaConfig].
  /// [functionArn] ARN for the Lambda function.
  DataSourceLambdaConfig({required this.functionArn});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'functionArn': functionArn};
  }

  factory DataSourceLambdaConfig.fromMap(Map<String, dynamic> map) {
    return DataSourceLambdaConfig(functionArn: map['functionArn'] as String);
  }
}
