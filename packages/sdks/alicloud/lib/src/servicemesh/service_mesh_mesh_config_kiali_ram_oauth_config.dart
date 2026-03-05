// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceMeshMeshConfigKialiRamOauthConfig {
  /// The redirect Uri provided to the RAM OAuth application. This needs to be the access address of the mesh topology service. When not provided, the redirect Uri will be automatically inferred based on the ServerConfig or the CLB address of the mesh topology integration.
  final pulumi.Input<String>? redirectUris;

  /// Creates a new [ServiceMeshMeshConfigKialiRamOauthConfig].
  /// [redirectUris] The redirect Uri provided to the RAM OAuth application. This needs to be the access address of the mesh topology service. When not provided, the redirect Uri will be automatically inferred based on the ServerConfig or the CLB address of the mesh topology integration.
  ServiceMeshMeshConfigKialiRamOauthConfig({
    this.redirectUris,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'redirectUris': ?redirectUris,
    };
  }

  factory ServiceMeshMeshConfigKialiRamOauthConfig.fromMap(Map<String, dynamic> map) {
    return ServiceMeshMeshConfigKialiRamOauthConfig(
      redirectUris: (() { final guardedValue = map['redirectUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

