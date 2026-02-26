// ignore_for_file: unused_element, unnecessary_cast

class TaskDefinitionRepositoryCredentials {
  final String? credentialsParameter;

  TaskDefinitionRepositoryCredentials({
    this.credentialsParameter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final credentialsParameterValue = credentialsParameter;
    if (credentialsParameterValue != null) {
      map['credentialsParameter'] = credentialsParameterValue;
    }
    return map;
  }

  factory TaskDefinitionRepositoryCredentials.fromMap(
      Map<String, dynamic> map) {
    return TaskDefinitionRepositoryCredentials(
      credentialsParameter: map['credentialsParameter'] == null
          ? null
          : map['credentialsParameter'] as String,
    );
  }
}
