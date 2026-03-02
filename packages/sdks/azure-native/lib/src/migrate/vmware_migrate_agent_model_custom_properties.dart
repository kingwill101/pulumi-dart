// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VMware MigrateAgent model custom properties.
class VMwareMigrateAgentModelCustomProperties {
  /// Gets or sets the friendly name of the,of the MigrateAgent fabric.
  final pulumi.Input<String>? fabricFriendlyName;
  /// Gets or sets the instance type.
  /// Expected value is 'VMwareMigrateAgentModelCustomProperties'.
  final pulumi.Input<String> instanceType;
  /// Gets or sets the master Site Id of the Migrate Agent.
  final pulumi.Input<String>? vmwareSiteId;

  /// Creates a new [VMwareMigrateAgentModelCustomProperties].
  /// [fabricFriendlyName] Gets or sets the friendly name of the,of the MigrateAgent fabric.
  /// [instanceType] Gets or sets the instance type.
  /// [vmwareSiteId] Gets or sets the master Site Id of the Migrate Agent.
  VMwareMigrateAgentModelCustomProperties({
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

  factory VMwareMigrateAgentModelCustomProperties.fromMap(Map<String, dynamic> map) {
    return VMwareMigrateAgentModelCustomProperties(
      fabricFriendlyName: map['fabricFriendlyName'] == null ? null : (map['fabricFriendlyName']! as String).input(),
      instanceType: (map['instanceType'] as String).input(),
      vmwareSiteId: map['vmwareSiteId'] == null ? null : (map['vmwareSiteId']! as String).input(),
    );
  }
}

