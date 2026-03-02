// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The unique key on that enforces uniqueness constraint on documents in the collection in the Azure Cosmos DB service.
class UniqueKeyResponse {
  /// List of paths must be unique for each document in the Azure Cosmos DB service
  final pulumi.Input<List<String>>? paths;

  /// Creates a new [UniqueKeyResponse].
  /// [paths] List of paths must be unique for each document in the Azure Cosmos DB service
  UniqueKeyResponse({
    this.paths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'paths': ?paths,
    };
  }

  factory UniqueKeyResponse.fromMap(Map<String, dynamic> map) {
    return UniqueKeyResponse(
      paths: map['paths'] == null ? null : ((map['paths']! as List).cast<String>()).input(),
    );
  }
}

