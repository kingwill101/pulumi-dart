// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DaemonTaskDefinitionContainerDefinitionRepositoryCredentials {
  /// ARN of the secret containing the private repository credentials.
  final pulumi.Input<String> credentialsParameter;

  /// Creates a new [DaemonTaskDefinitionContainerDefinitionRepositoryCredentials].
  /// [credentialsParameter] ARN of the secret containing the private repository credentials.
  const DaemonTaskDefinitionContainerDefinitionRepositoryCredentials({
    required this.credentialsParameter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialsParameter': credentialsParameter,
    };
  }

  factory DaemonTaskDefinitionContainerDefinitionRepositoryCredentials.fromMap(Map<String, dynamic> map) {
    return DaemonTaskDefinitionContainerDefinitionRepositoryCredentials(
      credentialsParameter: pulumi.Input.fromValue(map['credentialsParameter'] as String),
    );
  }
}
