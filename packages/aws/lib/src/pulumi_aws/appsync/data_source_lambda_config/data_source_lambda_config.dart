// ignore_for_file: unused_element, unnecessary_cast

class DataSourceLambdaConfig {
  /// ARN for the Lambda function.
  final String functionArn;

  DataSourceLambdaConfig({
    required this.functionArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['functionArn'] = functionArn;
    return map;
  }

  factory DataSourceLambdaConfig.fromMap(Map<String, dynamic> map) {
    return DataSourceLambdaConfig(
      functionArn: map['functionArn'] as String,
    );
  }
}
