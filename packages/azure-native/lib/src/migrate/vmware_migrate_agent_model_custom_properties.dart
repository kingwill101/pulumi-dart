// ignore_for_file: unused_element, unnecessary_cast


/// VMware MigrateAgent model custom properties.
class VMwareMigrateAgentModelCustomProperties {
  /// Gets or sets the friendly name of the,of the MigrateAgent fabric.
  final String? fabricFriendlyName;
  /// Gets or sets the instance type.
  /// Expected value is 'VMwareMigrateAgentModelCustomProperties'.
  final String instanceType;
  /// Gets or sets the master Site Id of the Migrate Agent.
  final String? vmwareSiteId;

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
      fabricFriendlyName: map['fabricFriendlyName'] == null ? null : map['fabricFriendlyName'] as String,
      instanceType: map['instanceType'] as String,
      vmwareSiteId: map['vmwareSiteId'] == null ? null : map['vmwareSiteId'] as String,
    );
  }
}

