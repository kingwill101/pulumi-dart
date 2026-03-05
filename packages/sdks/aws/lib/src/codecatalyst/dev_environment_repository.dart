// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DevEnvironmentRepository {
  /// The name of the branch in a source repository.
  ///
  /// persistent storage (` persistent_storage`) supports the following:
  final pulumi.Input<String>? branchName;
  /// The name of the source repository.
  final pulumi.Input<String> repositoryName;

  /// Creates a new [DevEnvironmentRepository].
  /// [branchName] The name of the branch in a source repository.
  /// [repositoryName] The name of the source repository.
  DevEnvironmentRepository({
    this.branchName,
    required this.repositoryName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branchName': ?branchName,
      'repositoryName': repositoryName,
    };
  }

  factory DevEnvironmentRepository.fromMap(Map<String, dynamic> map) {
    return DevEnvironmentRepository(
      branchName: (() { final guardedValue = map['branchName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositoryName: pulumi.Input.fromValue(map['repositoryName'] as String),
    );
  }
}

