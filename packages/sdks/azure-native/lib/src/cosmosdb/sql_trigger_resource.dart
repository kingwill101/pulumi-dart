// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cosmos DB SQL trigger resource object
class SqlTriggerResource {
  /// Body of the Trigger
  final pulumi.Input<String>? body;
  /// Name of the Cosmos DB SQL trigger
  final pulumi.Input<String> id;
  /// The operation the trigger is associated with
  final pulumi.Input<String>? triggerOperation;
  /// Type of the Trigger
  final pulumi.Input<String>? triggerType;

  /// Creates a new [SqlTriggerResource].
  /// [body] Body of the Trigger
  /// [id] Name of the Cosmos DB SQL trigger
  /// [triggerOperation] The operation the trigger is associated with
  /// [triggerType] Type of the Trigger
  SqlTriggerResource({
    this.body,
    required this.id,
    this.triggerOperation,
    this.triggerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': ?body,
      'id': id,
      'triggerOperation': ?triggerOperation,
      'triggerType': ?triggerType,
    };
  }

  factory SqlTriggerResource.fromMap(Map<String, dynamic> map) {
    return SqlTriggerResource(
      body: map['body'] == null ? null : (map['body']! as String).input(),
      id: (map['id'] as String).input(),
      triggerOperation: map['triggerOperation'] == null ? null : (map['triggerOperation']! as String).input(),
      triggerType: map['triggerType'] == null ? null : (map['triggerType']! as String).input(),
    );
  }
}

