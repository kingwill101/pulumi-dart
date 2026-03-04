// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RepositoryUpstream {
  /// The name of an upstream repository.
  final pulumi.Input<String> repositoryName;

  /// Creates a new [RepositoryUpstream].
  /// [repositoryName] The name of an upstream repository.
  RepositoryUpstream({required this.repositoryName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'repositoryName': repositoryName};
  }

  factory RepositoryUpstream.fromMap(Map<String, dynamic> map) {
    return RepositoryUpstream(
      repositoryName: pulumi.Input.fromValue(map['repositoryName'] as String),
    );
  }
}
