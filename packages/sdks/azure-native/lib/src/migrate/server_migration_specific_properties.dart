// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a Server Migration Specific properties base model.
class ServerMigrationSpecificProperties {
  /// A type definition that refers the id to an Azure Resource Manager resource.
  final pulumi.Input<String>? currentJobId;
  /// A type definition that refers the id to an Azure Resource Manager resource.
  final pulumi.Input<String>? drApplianceInventoryId;
  /// Migration Specific Properties Instance Types.
  /// Expected value is 'ServerMigration'.
  final pulumi.Input<String> instanceType;

  /// Creates a new [ServerMigrationSpecificProperties].
  /// [currentJobId] A type definition that refers the id to an Azure Resource Manager resource.
  /// [drApplianceInventoryId] A type definition that refers the id to an Azure Resource Manager resource.
  /// [instanceType] Migration Specific Properties Instance Types.
  ServerMigrationSpecificProperties({
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

  factory ServerMigrationSpecificProperties.fromMap(Map<String, dynamic> map) {
    return ServerMigrationSpecificProperties(
      currentJobId: map['currentJobId'] == null ? null : (map['currentJobId']! as String).input(),
      drApplianceInventoryId: map['drApplianceInventoryId'] == null ? null : (map['drApplianceInventoryId']! as String).input(),
      instanceType: (map['instanceType'] as String).input(),
    );
  }
}

