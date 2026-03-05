// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ModelContainerImageConfigRepositoryAuthConfig {
  /// Amazon Resource Name (ARN) of an AWS Lambda function that provides credentials to authenticate to the private Docker registry where your model image is hosted. For information about how to create an AWS Lambda function, see [Create a Lambda function with the console](https://docs.aws.amazon.com/lambda/latest/dg/getting-started-create-function.html) in the _AWS Lambda Developer Guide_.
  final pulumi.Input<String> repositoryCredentialsProviderArn;

  /// Creates a new [ModelContainerImageConfigRepositoryAuthConfig].
  /// [repositoryCredentialsProviderArn] Amazon Resource Name (ARN) of an AWS Lambda function that provides credentials to authenticate to the private Docker registry where your model image is hosted. For information about how to create an AWS Lambda function, see [Create a Lambda function with the console](https://docs.aws.amazon.com/lambda/latest/dg/getting-started-create-function.html) in the _AWS Lambda Developer Guide_.
  ModelContainerImageConfigRepositoryAuthConfig({
    required this.repositoryCredentialsProviderArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'repositoryCredentialsProviderArn': repositoryCredentialsProviderArn,
    };
  }

  factory ModelContainerImageConfigRepositoryAuthConfig.fromMap(Map<String, dynamic> map) {
    return ModelContainerImageConfigRepositoryAuthConfig(
      repositoryCredentialsProviderArn: pulumi.Input.fromValue(map['repositoryCredentialsProviderArn'] as String),
    );
  }
}

