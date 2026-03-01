// ignore_for_file: unused_element, unnecessary_cast


class SqlTriggerGetPropertiesResponseResource {
  /// Body of the Trigger
  final String? body;
  /// A system generated property representing the resource etag required for optimistic concurrency control.
  final String etag;
  /// Name of the Cosmos DB SQL trigger
  final String id;
  /// A system generated property. A unique identifier.
  final String rid;
  /// The operation the trigger is associated with
  final String? triggerOperation;
  /// Type of the Trigger
  final String? triggerType;
  /// A system generated property that denotes the last updated timestamp of the resource.
  final double ts;

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
      body: map['body'] == null ? null : map['body'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      rid: map['rid'] as String,
      triggerOperation: map['triggerOperation'] == null ? null : map['triggerOperation'] as String,
      triggerType: map['triggerType'] == null ? null : map['triggerType'] as String,
      ts: map['ts'] as double,
    );
  }
}

