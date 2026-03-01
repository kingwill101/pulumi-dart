// ignore_for_file: unused_element, unnecessary_cast


/// System Extension and its desired versions to be installed on the cluster resource.
class SystemComponent {
  /// Major Version of the system extension to be installed on the cluster resource.
  final int? majorVersion;
  /// Type of the system extension
  final String? type;
  /// Version of the system extension to be installed on the cluster resource.
  final String? userSpecifiedVersion;

  /// Creates a new [SystemComponent].
  /// [majorVersion] Major Version of the system extension to be installed on the cluster resource.
  /// [type] Type of the system extension
  /// [userSpecifiedVersion] Version of the system extension to be installed on the cluster resource.
  SystemComponent({
    this.majorVersion,
    this.type,
    this.userSpecifiedVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'majorVersion': ?majorVersion,
      'type': ?type,
      'userSpecifiedVersion': ?userSpecifiedVersion,
    };
  }

  factory SystemComponent.fromMap(Map<String, dynamic> map) {
    return SystemComponent(
      majorVersion: map['majorVersion'] == null ? null : map['majorVersion'] as int,
      type: map['type'] == null ? null : map['type'] as String,
      userSpecifiedVersion: map['userSpecifiedVersion'] == null ? null : map['userSpecifiedVersion'] as String,
    );
  }
}

