// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VMware MigrateAgent model custom properties.
class VMwareMigrateAgentModelCustomPropertiesResponse {
  /// Gets or sets the friendly name of the,of the MigrateAgent fabric.
  final pulumi.Input<String>? fabricFriendlyName;
  /// Gets or sets the instance type.
  /// Expected value is 'VMwareMigrateAgentModelCustomProperties'.
  final pulumi.Input<String> instanceType;
  /// Gets or sets the master Site Id of the Migrate Agent.
  final pulumi.Input<String>? vmwareSiteId;

  /// Creates a new [VMwareMigrateAgentModelCustomPropertiesResponse].
  /// [fabricFriendlyName] Gets or sets the friendly name of the,of the MigrateAgent fabric.
  /// [instanceType] Gets or sets the instance type.
  /// [vmwareSiteId] Gets or sets the master Site Id of the Migrate Agent.
  VMwareMigrateAgentModelCustomPropertiesResponse({
    this.fabricFriendlyName,
    required this.instanceType,
    this.vmwareSiteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fabricFriendlyName': ?fabricFriendlyName,
      'instanceType': instanceType,
      'vmwareSiteId': ?vmwareSiteId,
    };
  }

  factory VMwareMigrateAgentModelCustomPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VMwareMigrateAgentModelCustomPropertiesResponse(
      fabricFriendlyName: (() { final guardedValue = map['fabricFriendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      vmwareSiteId: (() { final guardedValue = map['vmwareSiteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

