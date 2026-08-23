// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RepositoryAssociationRepositoryCodecommit {
  /// The name of the AWS CodeCommit repository.
  final pulumi.Input<String> name;

  /// Creates a new [RepositoryAssociationRepositoryCodecommit].
  /// [name] The name of the AWS CodeCommit repository.
  const RepositoryAssociationRepositoryCodecommit({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory RepositoryAssociationRepositoryCodecommit.fromMap(Map<String, dynamic> map) {
    return RepositoryAssociationRepositoryCodecommit(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
