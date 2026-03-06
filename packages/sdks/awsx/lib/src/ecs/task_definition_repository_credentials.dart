// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TaskDefinitionRepositoryCredentials {
  final pulumi.Input<String>? credentialsParameter;

  /// Creates a new [TaskDefinitionRepositoryCredentials].
  /// [credentialsParameter] Optional.
  const TaskDefinitionRepositoryCredentials({
    this.credentialsParameter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialsParameter': ?credentialsParameter,
    };
  }

  factory TaskDefinitionRepositoryCredentials.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionRepositoryCredentials(
      credentialsParameter: (() { final guardedValue = map['credentialsParameter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

