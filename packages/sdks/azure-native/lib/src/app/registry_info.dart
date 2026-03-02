// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Container App registry information.
class RegistryInfo {
  /// registry secret.
  final pulumi.Input<String>? registryPassword;
  /// registry server Url.
  final pulumi.Input<String>? registryUrl;
  /// registry username.
  final pulumi.Input<String>? registryUserName;

  /// Creates a new [RegistryInfo].
  /// [registryPassword] registry secret.
  /// [registryUrl] registry server Url.
  /// [registryUserName] registry username.
  RegistryInfo({
    this.registryPassword,
    this.registryUrl,
    this.registryUserName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'registryPassword': ?registryPassword,
      'registryUrl': ?registryUrl,
      'registryUserName': ?registryUserName,
    };
  }

  factory RegistryInfo.fromMap(Map<String, dynamic> map) {
    return RegistryInfo(
      registryPassword: map['registryPassword'] == null ? null : (map['registryPassword'] as String).input(),
      registryUrl: map['registryUrl'] == null ? null : (map['registryUrl'] as String).input(),
      registryUserName: map['registryUserName'] == null ? null : (map['registryUserName'] as String).input(),
    );
  }
}

