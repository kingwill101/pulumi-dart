// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExpressGatewayServicePrimaryContainerRepositoryCredentials {
  /// ARN of the AWS Systems Manager parameter containing the repository credentials.
  final pulumi.Input<String> credentialsParameter;

  /// Creates a new [ExpressGatewayServicePrimaryContainerRepositoryCredentials].
  /// [credentialsParameter] ARN of the AWS Systems Manager parameter containing the repository credentials.
  const ExpressGatewayServicePrimaryContainerRepositoryCredentials({
    required this.credentialsParameter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialsParameter': credentialsParameter,
    };
  }

  factory ExpressGatewayServicePrimaryContainerRepositoryCredentials.fromMap(Map<String, dynamic> map) {
    return ExpressGatewayServicePrimaryContainerRepositoryCredentials(
      credentialsParameter: pulumi.Input.fromValue(map['credentialsParameter'] as String),
    );
  }
}

