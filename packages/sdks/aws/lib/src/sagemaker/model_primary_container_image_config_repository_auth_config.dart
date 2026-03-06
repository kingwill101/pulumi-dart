// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ModelPrimaryContainerImageConfigRepositoryAuthConfig {
  /// Amazon Resource Name (ARN) of an AWS Lambda function that provides credentials to authenticate to the private Docker registry where your model image is hosted. For information about how to create an AWS Lambda function, see [Create a Lambda function with the console](https://docs.aws.amazon.com/lambda/latest/dg/getting-started-create-function.html) in the _AWS Lambda Developer Guide_.
  final pulumi.Input<String> repositoryCredentialsProviderArn;

  /// Creates a new [ModelPrimaryContainerImageConfigRepositoryAuthConfig].
  /// [repositoryCredentialsProviderArn] Amazon Resource Name (ARN) of an AWS Lambda function that provides credentials to authenticate to the private Docker registry where your model image is hosted. For information about how to create an AWS Lambda function, see [Create a Lambda function with the console](https://docs.aws.amazon.com/lambda/latest/dg/getting-started-create-function.html) in the _AWS Lambda Developer Guide_.
  const ModelPrimaryContainerImageConfigRepositoryAuthConfig({
    required this.repositoryCredentialsProviderArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'repositoryCredentialsProviderArn': repositoryCredentialsProviderArn,
    };
  }

  factory ModelPrimaryContainerImageConfigRepositoryAuthConfig.fromMap(Map<String, dynamic> map) {
    return ModelPrimaryContainerImageConfigRepositoryAuthConfig(
      repositoryCredentialsProviderArn: pulumi.Input.fromValue(map['repositoryCredentialsProviderArn'] as String),
    );
  }
}

