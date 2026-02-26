// ignore_for_file: unused_element, unnecessary_cast

class ModelPrimaryContainerImageConfigRepositoryAuthConfig {
  /// Amazon Resource Name (ARN) of an AWS Lambda function that provides credentials to authenticate to the private Docker registry where your model image is hosted. For information about how to create an AWS Lambda function, see [Create a Lambda function with the console](https://docs.aws.amazon.com/lambda/latest/dg/getting-started-create-function.html) in the _AWS Lambda Developer Guide_.
  final String repositoryCredentialsProviderArn;

  ModelPrimaryContainerImageConfigRepositoryAuthConfig({
    required this.repositoryCredentialsProviderArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['repositoryCredentialsProviderArn'] = repositoryCredentialsProviderArn;
    return map;
  }

  factory ModelPrimaryContainerImageConfigRepositoryAuthConfig.fromMap(
      Map<String, dynamic> map) {
    return ModelPrimaryContainerImageConfigRepositoryAuthConfig(
      repositoryCredentialsProviderArn:
          map['repositoryCredentialsProviderArn'] as String,
    );
  }
}
