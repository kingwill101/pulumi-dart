// ignore_for_file: unused_element, unnecessary_cast


/// The unique key on that enforces uniqueness constraint on documents in the collection in the Azure Cosmos DB service.
class UniqueKey {
  /// List of paths must be unique for each document in the Azure Cosmos DB service
  final List<String>? paths;

  /// Creates a new [UniqueKey].
  /// [paths] List of paths must be unique for each document in the Azure Cosmos DB service
  UniqueKey({
    this.paths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'paths': ?paths,
    };
  }

  factory UniqueKey.fromMap(Map<String, dynamic> map) {
    return UniqueKey(
      paths: map['paths'] == null ? null : (map['paths'] as List).cast<String>(),
    );
  }
}

