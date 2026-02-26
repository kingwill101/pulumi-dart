// ignore_for_file: unused_element, unnecessary_cast

class RepositoryAssociationRepositoryCodecommit {
  /// The name of the AWS CodeCommit repository.
  final String name;

  RepositoryAssociationRepositoryCodecommit({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory RepositoryAssociationRepositoryCodecommit.fromMap(
      Map<String, dynamic> map) {
    return RepositoryAssociationRepositoryCodecommit(
      name: map['name'] as String,
    );
  }
}
