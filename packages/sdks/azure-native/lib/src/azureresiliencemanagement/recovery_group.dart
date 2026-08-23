// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recovery_group_properties.dart';

/// Represents a recovery orchestration group resource in the Azure Resilience Management provider namespace.
class RecoveryGroup {
  /// The resource-specific properties for this resource.
  final pulumi.Input<RecoveryGroupProperties>? properties;

  /// Creates a new [RecoveryGroup].
  /// [properties] The resource-specific properties for this resource.
  const RecoveryGroup({
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<RecoveryGroupProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory RecoveryGroup.fromMap(Map<String, dynamic> map) {
    return RecoveryGroup(
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RecoveryGroupProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
