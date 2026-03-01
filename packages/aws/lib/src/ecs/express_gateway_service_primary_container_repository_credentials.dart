// ignore_for_file: unused_element, unnecessary_cast


class ExpressGatewayServicePrimaryContainerRepositoryCredentials {
  /// ARN of the AWS Systems Manager parameter containing the repository credentials.
  final String credentialsParameter;

  /// Creates a new [ExpressGatewayServicePrimaryContainerRepositoryCredentials].
  /// [credentialsParameter] ARN of the AWS Systems Manager parameter containing the repository credentials.
  ExpressGatewayServicePrimaryContainerRepositoryCredentials({
    required this.credentialsParameter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialsParameter': credentialsParameter,
    };
  }

  factory ExpressGatewayServicePrimaryContainerRepositoryCredentials.fromMap(Map<String, dynamic> map) {
    return ExpressGatewayServicePrimaryContainerRepositoryCredentials(
      credentialsParameter: map['credentialsParameter'] as String,
    );
  }
}

