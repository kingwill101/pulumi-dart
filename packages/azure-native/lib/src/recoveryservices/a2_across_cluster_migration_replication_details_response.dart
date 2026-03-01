// ignore_for_file: unused_element, unnecessary_cast


/// A2A provider specific settings.
class A2ACrossClusterMigrationReplicationDetailsResponse {
  /// The fabric specific object Id of the virtual machine.
  final String? fabricObjectId;
  /// Gets the Instance type.
  /// Expected value is 'A2ACrossClusterMigration'.
  final String instanceType;
  /// An id associated with the PE that survives actions like switch protection which change the backing PE/CPE objects internally.The lifecycle id gets carried forward to have a link/continuity in being able to have an Id that denotes the "same" protected item even though other internal Ids/ARM Id might be changing.
  final String? lifecycleId;
  /// The type of operating system.
  final String? osType;
  /// Primary fabric location.
  final String? primaryFabricLocation;
  /// The protection state for the vm.
  final String? vmProtectionState;
  /// The protection state description for the vm.
  final String? vmProtectionStateDescription;

  /// Creates a new [A2ACrossClusterMigrationReplicationDetailsResponse].
  /// [fabricObjectId] The fabric specific object Id of the virtual machine.
  /// [instanceType] Gets the Instance type.
  /// [lifecycleId] An id associated with the PE that survives actions like switch protection which change the backing PE/CPE objects internally.The lifecycle id gets carried forward to have a link/continuity in being able to have an Id that denotes the "same" protected item even though other internal Ids/ARM Id might be changing.
  /// [osType] The type of operating system.
  /// [primaryFabricLocation] Primary fabric location.
  /// [vmProtectionState] The protection state for the vm.
  /// [vmProtectionStateDescription] The protection state description for the vm.
  A2ACrossClusterMigrationReplicationDetailsResponse({
    this.fabricObjectId,
    required this.instanceType,
    this.lifecycleId,
    this.osType,
    this.primaryFabricLocation,
    this.vmProtectionState,
    this.vmProtectionStateDescription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fabricObjectId': ?fabricObjectId,
      'instanceType': instanceType,
      'lifecycleId': ?lifecycleId,
      'osType': ?osType,
      'primaryFabricLocation': ?primaryFabricLocation,
      'vmProtectionState': ?vmProtectionState,
      'vmProtectionStateDescription': ?vmProtectionStateDescription,
    };
  }

  factory A2ACrossClusterMigrationReplicationDetailsResponse.fromMap(Map<String, dynamic> map) {
    return A2ACrossClusterMigrationReplicationDetailsResponse(
      fabricObjectId: map['fabricObjectId'] == null ? null : map['fabricObjectId'] as String,
      instanceType: map['instanceType'] as String,
      lifecycleId: map['lifecycleId'] == null ? null : map['lifecycleId'] as String,
      osType: map['osType'] == null ? null : map['osType'] as String,
      primaryFabricLocation: map['primaryFabricLocation'] == null ? null : map['primaryFabricLocation'] as String,
      vmProtectionState: map['vmProtectionState'] == null ? null : map['vmProtectionState'] as String,
      vmProtectionStateDescription: map['vmProtectionStateDescription'] == null ? null : map['vmProtectionStateDescription'] as String,
    );
  }
}

