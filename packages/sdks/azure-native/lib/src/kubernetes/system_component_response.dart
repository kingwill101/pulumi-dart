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
  SystemComponentResponse({
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
      currentVersion: (map['currentVersion'] as String).input(),
      majorVersion: map['majorVersion'] == null ? null : (map['majorVersion'] as int).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      userSpecifiedVersion: map['userSpecifiedVersion'] == null ? null : (map['userSpecifiedVersion'] as String).input(),
    );
  }
}

