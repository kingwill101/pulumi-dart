// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a Server Migration Specific properties base model.
class ServerMigrationSpecificPropertiesResponse {
  /// A type definition that refers the id to an Azure Resource Manager resource.
  final pulumi.Input<String>? currentJobId;
  /// A type definition that refers the id to an Azure Resource Manager resource.
  final pulumi.Input<String>? drApplianceInventoryId;
  /// Migration Specific Properties Instance Types.
  /// Expected value is 'ServerMigration'.
  final pulumi.Input<String> instanceType;

  /// Creates a new [ServerMigrationSpecificPropertiesResponse].
  /// [currentJobId] A type definition that refers the id to an Azure Resource Manager resource.
  /// [drApplianceInventoryId] A type definition that refers the id to an Azure Resource Manager resource.
  /// [instanceType] Migration Specific Properties Instance Types.
  ServerMigrationSpecificPropertiesResponse({
    this.currentJobId,
    this.drApplianceInventoryId,
    required this.instanceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentJobId': ?currentJobId,
      'drApplianceInventoryId': ?drApplianceInventoryId,
      'instanceType': instanceType,
    };
  }

  factory ServerMigrationSpecificPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ServerMigrationSpecificPropertiesResponse(
      currentJobId: (() { final guardedValue = map['currentJobId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      drApplianceInventoryId: (() { final guardedValue = map['drApplianceInventoryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
    );
  }
}

