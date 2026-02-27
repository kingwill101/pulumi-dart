// ignore_for_file: unused_element, unnecessary_cast

import '../data_source_http_config_authorization_config_aws_iam_config/data_source_http_config_authorization_config_aws_iam_config.dart';

class DataSourceHttpConfigAuthorizationConfig {
  /// Authorization type that the HTTP endpoint requires. Default values is `AWS_IAM`.
  final String? authorizationType;

  /// Identity and Access Management (IAM) settings. See `aws_iam_config` Block for details.
  final DataSourceHttpConfigAuthorizationConfigAwsIamConfig? awsIamConfig;

  DataSourceHttpConfigAuthorizationConfig({
    this.authorizationType,
    this.awsIamConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authorizationTypeValue = authorizationType;
    if (authorizationTypeValue != null) {
      map['authorizationType'] = authorizationTypeValue;
    }
    final awsIamConfigValue = awsIamConfig;
    if (awsIamConfigValue != null) {
      map['awsIamConfig'] = awsIamConfigValue.toMap();
    }
    return map;
  }

  factory DataSourceHttpConfigAuthorizationConfig.fromMap(
      Map<String, dynamic> map) {
    return DataSourceHttpConfigAuthorizationConfig(
      authorizationType: map['authorizationType'] == null
          ? null
          : map['authorizationType'] as String,
      awsIamConfig: map['awsIamConfig'] == null
          ? null
          : DataSourceHttpConfigAuthorizationConfigAwsIamConfig.fromMap(
              (map['awsIamConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
