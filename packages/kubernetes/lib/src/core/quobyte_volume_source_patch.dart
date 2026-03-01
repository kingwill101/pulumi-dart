// ignore_for_file: unused_element, unnecessary_cast


/// Represents a Quobyte mount that lasts the lifetime of a pod. Quobyte volumes do not support ownership management or SELinux relabeling.
class QuobyteVolumeSourcePatch {
  /// group to map volume access to Default is no group
  final String? group;
  /// readOnly here will force the Quobyte volume to be mounted with read-only permissions. Defaults to false.
  final bool? readOnly;
  /// registry represents a single or multiple Quobyte Registry services specified as a string as host:port pair (multiple entries are separated with commas) which acts as the central registry for volumes
  final String? registry;
  /// tenant owning the given Quobyte volume in the Backend Used with dynamically provisioned Quobyte volumes, value is set by the plugin
  final String? tenant;
  /// user to map volume access to Defaults to serivceaccount user
  final String? user;
  /// volume is a string that references an already created Quobyte volume by name.
  final String? volume;

  /// Creates a new [QuobyteVolumeSourcePatch].
  /// [group] group to map volume access to Default is no group
  /// [readOnly] readOnly here will force the Quobyte volume to be mounted with read-only permissions. Defaults to false.
  /// [registry] registry represents a single or multiple Quobyte Registry services specified as a string as host:port pair (multiple entries are separated with commas) which acts as the central registry for volumes
  /// [tenant] tenant owning the given Quobyte volume in the Backend Used with dynamically provisioned Quobyte volumes, value is set by the plugin
  /// [user] user to map volume access to Defaults to serivceaccount user
  /// [volume] volume is a string that references an already created Quobyte volume by name.
  QuobyteVolumeSourcePatch({
    this.group,
    this.readOnly,
    this.registry,
    this.tenant,
    this.user,
    this.volume,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': ?group,
      'readOnly': ?readOnly,
      'registry': ?registry,
      'tenant': ?tenant,
      'user': ?user,
      'volume': ?volume,
    };
  }

  factory QuobyteVolumeSourcePatch.fromMap(Map<String, dynamic> map) {
    return QuobyteVolumeSourcePatch(
      group: map['group'] == null ? null : map['group'] as String,
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
      registry: map['registry'] == null ? null : map['registry'] as String,
      tenant: map['tenant'] == null ? null : map['tenant'] as String,
      user: map['user'] == null ? null : map['user'] as String,
      volume: map['volume'] == null ? null : map['volume'] as String,
    );
  }
}

