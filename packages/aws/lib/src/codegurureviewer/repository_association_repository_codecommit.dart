// ignore_for_file: unused_element, unnecessary_cast


class RepositoryAssociationRepositoryCodecommit {
  /// The name of the AWS CodeCommit repository.
  final String name;

  /// Creates a new [RepositoryAssociationRepositoryCodecommit].
  /// [name] The name of the AWS CodeCommit repository.
  RepositoryAssociationRepositoryCodecommit({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory RepositoryAssociationRepositoryCodecommit.fromMap(Map<String, dynamic> map) {
    return RepositoryAssociationRepositoryCodecommit(
      name: map['name'] as String,
    );
  }
}

