// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSourceLambdaConfig {
  /// ARN for the Lambda function.
  final pulumi.Input<String> functionArn;

  /// Creates a new [DataSourceLambdaConfig].
  /// [functionArn] ARN for the Lambda function.
  DataSourceLambdaConfig({
    required this.functionArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionArn': functionArn,
    };
  }

  factory DataSourceLambdaConfig.fromMap(Map<String, dynamic> map) {
    return DataSourceLambdaConfig(
      functionArn: pulumi.Input.fromValue(map['functionArn'] as String),
    );
  }
}

