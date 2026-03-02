// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SqlUserDefinedFunctionGetPropertiesResponseResource {
  /// Body of the User Defined Function
  final pulumi.Input<String>? body;
  /// A system generated property representing the resource etag required for optimistic concurrency control.
  final pulumi.Input<String> etag;
  /// Name of the Cosmos DB SQL userDefinedFunction
  final pulumi.Input<String> id;
  /// A system generated property. A unique identifier.
  final pulumi.Input<String> rid;
  /// A system generated property that denotes the last updated timestamp of the resource.
  final pulumi.Input<double> ts;

  /// Creates a new [SqlUserDefinedFunctionGetPropertiesResponseResource].
  /// [body] Body of the User Defined Function
  /// [etag] A system generated property representing the resource etag required for optimistic concurrency control.
  /// [id] Name of the Cosmos DB SQL userDefinedFunction
  /// [rid] A system generated property. A unique identifier.
  /// [ts] A system generated property that denotes the last updated timestamp of the resource.
  SqlUserDefinedFunctionGetPropertiesResponseResource({
    this.body,
    required this.etag,
    required this.id,
    required this.rid,
    required this.ts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': ?body,
      'etag': etag,
      'id': id,
      'rid': rid,
      'ts': ts,
    };
  }

  factory SqlUserDefinedFunctionGetPropertiesResponseResource.fromMap(Map<String, dynamic> map) {
    return SqlUserDefinedFunctionGetPropertiesResponseResource(
      body: map['body'] == null ? null : (map['body']! as String).input(),
      etag: (map['etag'] as String).input(),
      id: (map['id'] as String).input(),
      rid: (map['rid'] as String).input(),
      ts: (map['ts'] as double).input(),
    );
  }
}

