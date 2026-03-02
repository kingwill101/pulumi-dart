// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SqlTriggerGetPropertiesResponseResource {
  /// Body of the Trigger
  final pulumi.Input<String>? body;
  /// A system generated property representing the resource etag required for optimistic concurrency control.
  final pulumi.Input<String> etag;
  /// Name of the Cosmos DB SQL trigger
  final pulumi.Input<String> id;
  /// A system generated property. A unique identifier.
  final pulumi.Input<String> rid;
  /// The operation the trigger is associated with
  final pulumi.Input<String>? triggerOperation;
  /// Type of the Trigger
  final pulumi.Input<String>? triggerType;
  /// A system generated property that denotes the last updated timestamp of the resource.
  final pulumi.Input<double> ts;

  /// Creates a new [SqlTriggerGetPropertiesResponseResource].
  /// [body] Body of the Trigger
  /// [etag] A system generated property representing the resource etag required for optimistic concurrency control.
  /// [id] Name of the Cosmos DB SQL trigger
  /// [rid] A system generated property. A unique identifier.
  /// [triggerOperation] The operation the trigger is associated with
  /// [triggerType] Type of the Trigger
  /// [ts] A system generated property that denotes the last updated timestamp of the resource.
  SqlTriggerGetPropertiesResponseResource({
    this.body,
    required this.etag,
    required this.id,
    required this.rid,
    this.triggerOperation,
    this.triggerType,
    required this.ts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': ?body,
      'etag': etag,
      'id': id,
      'rid': rid,
      'triggerOperation': ?triggerOperation,
      'triggerType': ?triggerType,
      'ts': ts,
    };
  }

  factory SqlTriggerGetPropertiesResponseResource.fromMap(Map<String, dynamic> map) {
    return SqlTriggerGetPropertiesResponseResource(
      body: map['body'] == null ? null : (map['body'] as String).input(),
      etag: (map['etag'] as String).input(),
      id: (map['id'] as String).input(),
      rid: (map['rid'] as String).input(),
      triggerOperation: map['triggerOperation'] == null ? null : (map['triggerOperation'] as String).input(),
      triggerType: map['triggerType'] == null ? null : (map['triggerType'] as String).input(),
      ts: (map['ts'] as double).input(),
    );
  }
}

