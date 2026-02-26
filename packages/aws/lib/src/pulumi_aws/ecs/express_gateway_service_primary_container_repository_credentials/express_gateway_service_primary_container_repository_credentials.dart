// ignore_for_file: unused_element, unnecessary_cast

class ExpressGatewayServicePrimaryContainerRepositoryCredentials {
  /// ARN of the AWS Systems Manager parameter containing the repository credentials.
  final String credentialsParameter;

  ExpressGatewayServicePrimaryContainerRepositoryCredentials({
    required this.credentialsParameter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['credentialsParameter'] = credentialsParameter;
    return map;
  }

  factory ExpressGatewayServicePrimaryContainerRepositoryCredentials.fromMap(
      Map<String, dynamic> map) {
    return ExpressGatewayServicePrimaryContainerRepositoryCredentials(
      credentialsParameter: map['credentialsParameter'] as String,
    );
  }
}
