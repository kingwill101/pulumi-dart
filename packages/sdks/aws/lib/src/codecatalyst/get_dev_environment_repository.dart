// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDevEnvironmentRepository {
  final pulumi.Input<String> branchName;
  final pulumi.Input<String> repositoryName;

  /// Creates a new [GetDevEnvironmentRepository].
  /// [branchName] Required.
  /// [repositoryName] Required.
  GetDevEnvironmentRepository({
    required this.branchName,
    required this.repositoryName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branchName': branchName,
      'repositoryName': repositoryName,
    };
  }

  factory GetDevEnvironmentRepository.fromMap(Map<String, dynamic> map) {
    return GetDevEnvironmentRepository(
      branchName: pulumi.Input.fromValue(map['branchName'] as String),
      repositoryName: pulumi.Input.fromValue(map['repositoryName'] as String),
    );
  }
}

