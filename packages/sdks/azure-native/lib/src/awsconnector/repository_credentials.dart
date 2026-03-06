// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of RepositoryCredentials
class RepositoryCredentials {
  /// The Amazon Resource Name (ARN) of the secret containing the private repository credentials.  When you use the Amazon ECS API, CLI, or AWS SDK, if the secret exists in the same Region as the task that you're launching then you can use either the full ARN or the name of the secret. When you use the AWS Management Console, you must specify the full ARN of the secret.
  final pulumi.Input<String>? credentialsParameter;

  /// Creates a new [RepositoryCredentials].
  /// [credentialsParameter] The Amazon Resource Name (ARN) of the secret containing the private repository credentials.  When you use the Amazon ECS API, CLI, or AWS SDK, if the secret exists in the same Region as the task that you're launching then you can use either the full ARN or the name of the secret. When you use the AWS Management Console, you must specify the full ARN of the secret.
  const RepositoryCredentials({
    this.credentialsParameter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialsParameter': ?credentialsParameter,
    };
  }

  factory RepositoryCredentials.fromMap(Map<String, dynamic> map) {
    return RepositoryCredentials(
      credentialsParameter: (() { final guardedValue = map['credentialsParameter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

