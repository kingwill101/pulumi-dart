// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CassandraViewGetPropertiesResponseResource {
  /// A system generated property representing the resource etag required for optimistic concurrency control.
  final pulumi.Input<String> etag;
  /// Name of the Cosmos DB Cassandra view
  final pulumi.Input<String> id;
  /// A system generated property. A unique identifier.
  final pulumi.Input<String> rid;
  /// A system generated property that denotes the last updated timestamp of the resource.
  final pulumi.Input<double> ts;
  /// View Definition of the Cosmos DB Cassandra view
  final pulumi.Input<String> viewDefinition;

  /// Creates a new [CassandraViewGetPropertiesResponseResource].
  /// [etag] A system generated property representing the resource etag required for optimistic concurrency control.
  /// [id] Name of the Cosmos DB Cassandra view
  /// [rid] A system generated property. A unique identifier.
  /// [ts] A system generated property that denotes the last updated timestamp of the resource.
  /// [viewDefinition] View Definition of the Cosmos DB Cassandra view
  const CassandraViewGetPropertiesResponseResource({
    required this.etag,
    required this.id,
    required this.rid,
    required this.ts,
    required this.viewDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'id': id,
      'rid': rid,
      'ts': ts,
      'viewDefinition': viewDefinition,
    };
  }

  factory CassandraViewGetPropertiesResponseResource.fromMap(Map<String, dynamic> map) {
    return CassandraViewGetPropertiesResponseResource(
      etag: pulumi.Input.fromValue(map['etag'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      rid: pulumi.Input.fromValue(map['rid'] as String),
      ts: pulumi.Input.fromValue((map['ts'] as num).toDouble()),
      viewDefinition: pulumi.Input.fromValue(map['viewDefinition'] as String),
    );
  }
}
