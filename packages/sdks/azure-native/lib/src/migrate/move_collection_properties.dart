// ignore_for_file: unused_element, unnecessary_cast


/// Defines the move collection properties.
class MoveCollectionProperties {
  /// Gets or sets the move region which indicates the region where the VM Regional to Zonal move will be conducted.
  final String? moveRegion;
  /// Defines the MoveType.
  final String? moveType;
  /// Gets or sets the source region.
  final String? sourceRegion;
  /// Gets or sets the target region.
  final String? targetRegion;
  /// Gets or sets the version of move collection.
  final String? version;

  /// Creates a new [MoveCollectionProperties].
  /// [moveRegion] Gets or sets the move region which indicates the region where the VM Regional to Zonal move will be conducted.
  /// [moveType] Defines the MoveType.
  /// [sourceRegion] Gets or sets the source region.
  /// [targetRegion] Gets or sets the target region.
  /// [version] Gets or sets the version of move collection.
  MoveCollectionProperties({
    this.moveRegion,
    this.moveType,
    this.sourceRegion,
    this.targetRegion,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'moveRegion': ?moveRegion,
      'moveType': ?moveType,
      'sourceRegion': ?sourceRegion,
      'targetRegion': ?targetRegion,
      'version': ?version,
    };
  }

  factory MoveCollectionProperties.fromMap(Map<String, dynamic> map) {
    return MoveCollectionProperties(
      moveRegion: map['moveRegion'] == null ? null : map['moveRegion'] as String,
      moveType: map['moveType'] == null ? null : map['moveType'] as String,
      sourceRegion: map['sourceRegion'] == null ? null : map['sourceRegion'] as String,
      targetRegion: map['targetRegion'] == null ? null : map['targetRegion'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

