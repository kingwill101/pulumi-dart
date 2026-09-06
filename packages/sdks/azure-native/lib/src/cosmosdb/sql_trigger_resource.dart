// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cosmos DB SQL trigger resource object
class SqlTriggerResource {
  /// Body of the Trigger
  final pulumi.Input<String?>? body;
  /// Name of the Cosmos DB SQL trigger
  final pulumi.Input<String> id;
  /// The operation the trigger is associated with
  final pulumi.Input<dynamic>? triggerOperation;
  /// Type of the Trigger
  final pulumi.Input<dynamic>? triggerType;

  /// Creates a new [SqlTriggerResource].
  /// [body] Body of the Trigger
  /// [id] Name of the Cosmos DB SQL trigger
  /// [triggerOperation] The operation the trigger is associated with
  /// [triggerType] Type of the Trigger
  const SqlTriggerResource({
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
      body: (() { final guardedValue = map['body']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      triggerOperation: (() { final guardedValue = map['triggerOperation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      triggerType: (() { final guardedValue = map['triggerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
