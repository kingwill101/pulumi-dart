// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_source_http_config_authorization_config_aws_iam_config.dart';

class DataSourceHttpConfigAuthorizationConfig {
  /// Authorization type that the HTTP endpoint requires. Default values is `AWS_IAM`.
  final pulumi.Input<String>? authorizationType;
  /// Identity and Access Management (IAM) settings. See `aws_iam_config` Block for details.
  final pulumi.Input<DataSourceHttpConfigAuthorizationConfigAwsIamConfig>? awsIamConfig;

  /// Creates a new [DataSourceHttpConfigAuthorizationConfig].
  /// [authorizationType] Authorization type that the HTTP endpoint requires. Default values is `AWS_IAM`.
  /// [awsIamConfig] Identity and Access Management (IAM) settings. See `aws_iam_config` Block for details.
  DataSourceHttpConfigAuthorizationConfig({
    this.authorizationType,
    this.awsIamConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationType': ?authorizationType,
      'awsIamConfig': ?pulumi.Input.mapOptionalInputValue<DataSourceHttpConfigAuthorizationConfigAwsIamConfig, Map<String, dynamic>>(awsIamConfig, (value) => value.toMap()),
    };
  }

  factory DataSourceHttpConfigAuthorizationConfig.fromMap(Map<String, dynamic> map) {
    return DataSourceHttpConfigAuthorizationConfig(
      authorizationType: map['authorizationType'] == null ? null : ((map['authorizationType'] as String).input()).input(),
      awsIamConfig: map['awsIamConfig'] == null ? null : ((DataSourceHttpConfigAuthorizationConfigAwsIamConfig.fromMap((map['awsIamConfig']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

