// ignore_for_file: unused_element, unnecessary_cast


class PoolTargetPermissions {
  /// Sets the group ownership for the storage pool target permissions.
  final String? group;
  /// Configures the label associated with the target permissions for the storage pool.
  final String? label;
  /// Defines the mode (file permissions) for the storage pool target.
  final String? mode;
  /// Specifies the owner of the permissions for the storage pool target.
  final String? owner;

  /// Creates a new [PoolTargetPermissions].
  /// [group] Sets the group ownership for the storage pool target permissions.
  /// [label] Configures the label associated with the target permissions for the storage pool.
  /// [mode] Defines the mode (file permissions) for the storage pool target.
  /// [owner] Specifies the owner of the permissions for the storage pool target.
  PoolTargetPermissions({
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

  factory PoolTargetPermissions.fromMap(Map<String, dynamic> map) {
    return PoolTargetPermissions(
      group: map['group'] == null ? null : map['group'] as String,
      label: map['label'] == null ? null : map['label'] as String,
      mode: map['mode'] == null ? null : map['mode'] as String,
      owner: map['owner'] == null ? null : map['owner'] as String,
    );
  }
}

