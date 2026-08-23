// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Container App registry information.
class RegistryInfoResponse {
  /// registry server Url.
  final pulumi.Input<String>? registryUrl;
  /// registry username.
  final pulumi.Input<String>? registryUserName;

  /// Creates a new [RegistryInfoResponse].
  /// [registryUrl] registry server Url.
  /// [registryUserName] registry username.
  const RegistryInfoResponse({
    this.registryUrl,
    this.registryUserName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'registryUrl': ?registryUrl,
      'registryUserName': ?registryUserName,
    };
  }

  factory RegistryInfoResponse.fromMap(Map<String, dynamic> map) {
    return RegistryInfoResponse(
      registryUrl: (() { final guardedValue = map['registryUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registryUserName: (() { final guardedValue = map['registryUserName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
