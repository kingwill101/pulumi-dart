// ignore_for_file: unused_element, unnecessary_cast


class VolumeBackingStorePermissions {
  /// Sets the group ownership for the backing store permissions of the volume.
  final String? group;
  /// Configures the label associated with the backing store permissions.
  final String? label;
  /// Specifies the mode (file permissions) for the backing store of the volume.
  final String? mode;
  /// Defines the owner of the backing store permissions for the volume.
  final String? owner;

  /// Creates a new [VolumeBackingStorePermissions].
  /// [group] Sets the group ownership for the backing store permissions of the volume.
  /// [label] Configures the label associated with the backing store permissions.
  /// [mode] Specifies the mode (file permissions) for the backing store of the volume.
  /// [owner] Defines the owner of the backing store permissions for the volume.
  VolumeBackingStorePermissions({
    this.group,
    this.label,
    this.mode,
    this.owner,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': ?group,
      'label': ?label,
      'mode': ?mode,
      'owner': ?owner,
    };
  }

  factory VolumeBackingStorePermissions.fromMap(Map<String, dynamic> map) {
    return VolumeBackingStorePermissions(
      group: map['group'] == null ? null : map['group'] as String,
      label: map['label'] == null ? null : map['label'] as String,
      mode: map['mode'] == null ? null : map['mode'] as String,
      owner: map['owner'] == null ? null : map['owner'] as String,
    );
  }
}

