// ignore_for_file: unused_element, unnecessary_cast

class TaskDefinitionRepositoryCredentials {
  final String? credentialsParameter;

  /// Creates a new [TaskDefinitionRepositoryCredentials].
  /// [credentialsParameter] Optional.
  TaskDefinitionRepositoryCredentials({this.credentialsParameter});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'credentialsParameter': ?credentialsParameter};
  }

  factory TaskDefinitionRepositoryCredentials.fromMap(
    Map<String, dynamic> map,
  ) {
    return TaskDefinitionRepositoryCredentials(
      credentialsParameter: map['credentialsParameter'] == null
          ? null
          : map['credentialsParameter'] as String,
    );
  }
}
