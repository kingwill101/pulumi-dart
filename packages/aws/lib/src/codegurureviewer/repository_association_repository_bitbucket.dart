// ignore_for_file: unused_element, unnecessary_cast


class RepositoryAssociationRepositoryBitbucket {
  /// The Amazon Resource Name (ARN) of an AWS CodeStar Connections connection.
  final String connectionArn;
  /// The name of the third party source repository.
  final String name;
  /// The username for the account that owns the repository.
  final String owner;

  /// Creates a new [RepositoryAssociationRepositoryBitbucket].
  /// [connectionArn] The Amazon Resource Name (ARN) of an AWS CodeStar Connections connection.
  /// [name] The name of the third party source repository.
  /// [owner] The username for the account that owns the repository.
  RepositoryAssociationRepositoryBitbucket({
    required this.connectionArn,
    required this.name,
    required this.owner,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionArn': connectionArn,
      'name': name,
      'owner': owner,
    };
  }

  factory RepositoryAssociationRepositoryBitbucket.fromMap(Map<String, dynamic> map) {
    return RepositoryAssociationRepositoryBitbucket(
      connectionArn: map['connectionArn'] as String,
      name: map['name'] as String,
      owner: map['owner'] as String,
    );
  }
}

