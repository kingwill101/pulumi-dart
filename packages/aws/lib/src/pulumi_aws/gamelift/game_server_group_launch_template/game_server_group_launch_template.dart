// ignore_for_file: unused_element, unnecessary_cast

class GameServerGroupLaunchTemplate {
  /// A unique identifier for an existing EC2 launch template.
  final String? id;

  /// A readable identifier for an existing EC2 launch template.
  final String? name;

  /// The version of the EC2 launch template to use. If none is set, the default is the first version created.
  final String? version;

  GameServerGroupLaunchTemplate({
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

  factory GameServerGroupLaunchTemplate.fromMap(Map<String, dynamic> map) {
    return GameServerGroupLaunchTemplate(
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
