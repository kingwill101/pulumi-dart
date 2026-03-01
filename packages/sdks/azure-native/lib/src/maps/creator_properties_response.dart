// ignore_for_file: unused_element, unnecessary_cast


/// Creator resource properties
class CreatorPropertiesResponse {
  /// The consumed storage unit size in bytes for the creator resource.
  final int? consumedStorageUnitSizeInBytes;
  /// The state of the resource provisioning, terminal states: Succeeded, Failed, Canceled
  final String provisioningState;
  /// The storage units to be allocated. Integer values from 1 to 100, inclusive.
  final int storageUnits;
  /// The total allocated storage unit size in bytes for the creator resource.
  final int? totalStorageUnitSizeInBytes;

  /// Creates a new [CreatorPropertiesResponse].
  /// [consumedStorageUnitSizeInBytes] The consumed storage unit size in bytes for the creator resource.
  /// [provisioningState] The state of the resource provisioning, terminal states: Succeeded, Failed, Canceled
  /// [storageUnits] The storage units to be allocated. Integer values from 1 to 100, inclusive.
  /// [totalStorageUnitSizeInBytes] The total allocated storage unit size in bytes for the creator resource.
  CreatorPropertiesResponse({
    this.consumedStorageUnitSizeInBytes,
    required this.provisioningState,
    required this.storageUnits,
    this.totalStorageUnitSizeInBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumedStorageUnitSizeInBytes': ?consumedStorageUnitSizeInBytes,
      'provisioningState': provisioningState,
      'storageUnits': storageUnits,
      'totalStorageUnitSizeInBytes': ?totalStorageUnitSizeInBytes,
    };
  }

  factory CreatorPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CreatorPropertiesResponse(
      consumedStorageUnitSizeInBytes: map['consumedStorageUnitSizeInBytes'] == null ? null : map['consumedStorageUnitSizeInBytes'] as int,
      provisioningState: map['provisioningState'] as String,
      storageUnits: map['storageUnits'] as int,
      totalStorageUnitSizeInBytes: map['totalStorageUnitSizeInBytes'] == null ? null : map['totalStorageUnitSizeInBytes'] as int,
    );
  }
}

