// ignore_for_file: unused_element, unnecessary_cast

class GroupLaunchTemplate {
  /// ID of the launch template. Conflicts with `name`.
  final String? id;

  /// Name of the launch template. Conflicts with `id`.
  final String? name;

  /// Template version. Can be version number, `$Latest`, or `$Default`. (Default: `$Default`).
  final String? version;

  GroupLaunchTemplate({
    this.id,
    this.name,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory GroupLaunchTemplate.fromMap(Map<String, dynamic> map) {
    return GroupLaunchTemplate(
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
