// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An Azure Cosmos DB Mongo DB Resource.
class PrivilegeResource {
  /// The collection name the role is applied.
  final pulumi.Input<String>? collection;
  /// The database name the role is applied.
  final pulumi.Input<String>? db;

  /// Creates a new [PrivilegeResource].
  /// [collection] The collection name the role is applied.
  /// [db] The database name the role is applied.
  PrivilegeResource({
    this.collection,
    this.db,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collection': ?collection,
      'db': ?db,
    };
  }

  factory PrivilegeResource.fromMap(Map<String, dynamic> map) {
    return PrivilegeResource(
      collection: (() { final guardedValue = map['collection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      db: (() { final guardedValue = map['db']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

