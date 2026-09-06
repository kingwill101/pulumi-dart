// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// System Extension and its desired versions to be installed on the cluster resource.
class SystemComponent {
  /// Major Version of the system extension to be installed on the cluster resource.
  final pulumi.Input<int?>? majorVersion;
  /// Type of the system extension
  final pulumi.Input<String?>? type;
  /// Version of the system extension to be installed on the cluster resource.
  final pulumi.Input<String?>? userSpecifiedVersion;

  /// Creates a new [SystemComponent].
  /// [majorVersion] Major Version of the system extension to be installed on the cluster resource.
  /// [type] Type of the system extension
  /// [userSpecifiedVersion] Version of the system extension to be installed on the cluster resource.
  const SystemComponent({
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
      majorVersion: (() { final guardedValue = map['majorVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userSpecifiedVersion: (() { final guardedValue = map['userSpecifiedVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
