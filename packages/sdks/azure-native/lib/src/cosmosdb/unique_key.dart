// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The unique key on that enforces uniqueness constraint on documents in the collection in the Azure Cosmos DB service.
class UniqueKey {
  /// List of paths must be unique for each document in the Azure Cosmos DB service
  final pulumi.Input<List<String>>? paths;

  /// Creates a new [UniqueKey].
  /// [paths] List of paths must be unique for each document in the Azure Cosmos DB service
  const UniqueKey({
    this.paths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'paths': ?paths,
    };
  }

  factory UniqueKey.fromMap(Map<String, dynamic> map) {
    return UniqueKey(
      paths: (() { final guardedValue = map['paths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

