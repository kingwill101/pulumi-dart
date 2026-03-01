// ignore_for_file: unused_element, unnecessary_cast


class GetStorageBoxTypesStorageBoxType {
  /// Maximum number of snapshots created automatically by a snapshot plan.
  final int automaticSnapshotLimit;
  /// Date of the Storage Box Type deprecation announcement.
  final String deprecationAnnounced;
  /// Description of the Storage Box Type.
  final String description;
  /// ID of the Storage Box Type.
  final int id;
  /// Whether the Storage Box Type is deprecated.
  final bool isDeprecated;
  /// Name of the Storage Box Type.
  final String name;
  /// Available storage in bytes.
  final int size;
  /// Maximum number of allowed manual snapshots.
  final int snapshotLimit;
  /// Maximum number of subaccounts.
  final int subaccountsLimit;
  /// Date of the Storage Box Type removal. After this date, the Storage Box Type cannot be used anymore.
  final String unavailableAfter;

  /// Creates a new [GetStorageBoxTypesStorageBoxType].
  /// [automaticSnapshotLimit] Maximum number of snapshots created automatically by a snapshot plan.
  /// [deprecationAnnounced] Date of the Storage Box Type deprecation announcement.
  /// [description] Description of the Storage Box Type.
  /// [id] ID of the Storage Box Type.
  /// [isDeprecated] Whether the Storage Box Type is deprecated.
  /// [name] Name of the Storage Box Type.
  /// [size] Available storage in bytes.
  /// [snapshotLimit] Maximum number of allowed manual snapshots.
  /// [subaccountsLimit] Maximum number of subaccounts.
  /// [unavailableAfter] Date of the Storage Box Type removal. After this date, the Storage Box Type cannot be used anymore.
  GetStorageBoxTypesStorageBoxType({
    required this.automaticSnapshotLimit,
    required this.deprecationAnnounced,
    required this.description,
    required this.id,
    required this.isDeprecated,
    required this.name,
    required this.size,
    required this.snapshotLimit,
    required this.subaccountsLimit,
    required this.unavailableAfter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticSnapshotLimit': automaticSnapshotLimit,
      'deprecationAnnounced': deprecationAnnounced,
      'description': description,
      'id': id,
      'isDeprecated': isDeprecated,
      'name': name,
      'size': size,
      'snapshotLimit': snapshotLimit,
      'subaccountsLimit': subaccountsLimit,
      'unavailableAfter': unavailableAfter,
    };
  }

  factory GetStorageBoxTypesStorageBoxType.fromMap(Map<String, dynamic> map) {
    return GetStorageBoxTypesStorageBoxType(
      automaticSnapshotLimit: map['automaticSnapshotLimit'] as int,
      deprecationAnnounced: map['deprecationAnnounced'] as String,
      description: map['description'] as String,
      id: map['id'] as int,
      isDeprecated: map['isDeprecated'] as bool,
      name: map['name'] as String,
      size: map['size'] as int,
      snapshotLimit: map['snapshotLimit'] as int,
      subaccountsLimit: map['subaccountsLimit'] as int,
      unavailableAfter: map['unavailableAfter'] as String,
    );
  }
}

