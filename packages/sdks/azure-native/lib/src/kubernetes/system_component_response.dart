// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// System Extension and its desired versions to be installed on the cluster resource.
class SystemComponentResponse {
  /// Version of the system extension is currently installed on the cluster resource.
  final pulumi.Input<String> currentVersion;
  /// Major Version of the system extension to be installed on the cluster resource.
  final pulumi.Input<int>? majorVersion;
  /// Type of the system extension
  final pulumi.Input<String>? type;
  /// Version of the system extension to be installed on the cluster resource.
  final pulumi.Input<String>? userSpecifiedVersion;

  /// Creates a new [SystemComponentResponse].
  /// [currentVersion] Version of the system extension is currently installed on the cluster resource.
  /// [majorVersion] Major Version of the system extension to be installed on the cluster resource.
  /// [type] Type of the system extension
  /// [userSpecifiedVersion] Version of the system extension to be installed on the cluster resource.
  const SystemComponentResponse({
    required this.currentVersion,
    this.majorVersion,
    this.type,
    this.userSpecifiedVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentVersion': currentVersion,
      'majorVersion': ?majorVersion,
      'type': ?type,
      'userSpecifiedVersion': ?userSpecifiedVersion,
    };
  }

  factory SystemComponentResponse.fromMap(Map<String, dynamic> map) {
    return SystemComponentResponse(
      currentVersion: pulumi.Input.fromValue(map['currentVersion'] as String),
      majorVersion: (() { final guardedValue = map['majorVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userSpecifiedVersion: (() { final guardedValue = map['userSpecifiedVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
