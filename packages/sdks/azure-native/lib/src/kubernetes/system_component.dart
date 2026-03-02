// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// System Extension and its desired versions to be installed on the cluster resource.
class SystemComponent {
  /// Major Version of the system extension to be installed on the cluster resource.
  final pulumi.Input<int>? majorVersion;
  /// Type of the system extension
  final pulumi.Input<String>? type;
  /// Version of the system extension to be installed on the cluster resource.
  final pulumi.Input<String>? userSpecifiedVersion;

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
      majorVersion: map['majorVersion'] == null ? null : (map['majorVersion']! as int).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      userSpecifiedVersion: map['userSpecifiedVersion'] == null ? null : (map['userSpecifiedVersion']! as String).input(),
    );
  }
}

