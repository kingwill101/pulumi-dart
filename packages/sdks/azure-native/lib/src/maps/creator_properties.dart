// ignore_for_file: unused_element, unnecessary_cast


/// Creator resource properties
class CreatorProperties {
  /// The consumed storage unit size in bytes for the creator resource.
  final int? consumedStorageUnitSizeInBytes;
  /// The storage units to be allocated. Integer values from 1 to 100, inclusive.
  final int storageUnits;
  /// The total allocated storage unit size in bytes for the creator resource.
  final int? totalStorageUnitSizeInBytes;

  /// Creates a new [CreatorProperties].
  /// [consumedStorageUnitSizeInBytes] The consumed storage unit size in bytes for the creator resource.
  /// [storageUnits] The storage units to be allocated. Integer values from 1 to 100, inclusive.
  /// [totalStorageUnitSizeInBytes] The total allocated storage unit size in bytes for the creator resource.
  CreatorProperties({
    this.consumedStorageUnitSizeInBytes,
    required this.storageUnits,
    this.totalStorageUnitSizeInBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumedStorageUnitSizeInBytes': ?consumedStorageUnitSizeInBytes,
      'storageUnits': storageUnits,
      'totalStorageUnitSizeInBytes': ?totalStorageUnitSizeInBytes,
    };
  }

  factory CreatorProperties.fromMap(Map<String, dynamic> map) {
    return CreatorProperties(
      consumedStorageUnitSizeInBytes: map['consumedStorageUnitSizeInBytes'] == null ? null : map['consumedStorageUnitSizeInBytes'] as int,
      storageUnits: map['storageUnits'] as int,
      totalStorageUnitSizeInBytes: map['totalStorageUnitSizeInBytes'] == null ? null : map['totalStorageUnitSizeInBytes'] as int,
    );
  }
}

