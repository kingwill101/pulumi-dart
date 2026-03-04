// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EciScalingConfigurationImageRegistryCredential {
  /// The password used to log on to the image repository. It is required
  /// when `image_registry_credential` is configured.
  final pulumi.Input<String>? password;

  /// The address of the image repository. It is required when `image_registry_credential` is
  /// configured.
  final pulumi.Input<String>? server;

  /// The username used to log on to the image repository. It is required
  /// when `image_registry_credential` is configured.
  final pulumi.Input<String>? username;

  /// Creates a new [EciScalingConfigurationImageRegistryCredential].
  /// [password] The password used to log on to the image repository. It is required
  /// [server] The address of the image repository. It is required when `image_registry_credential` is
  /// [username] The username used to log on to the image repository. It is required
  EciScalingConfigurationImageRegistryCredential({
    this.password,
    this.server,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'server': ?server,
      'username': ?username,
    };
  }

  factory EciScalingConfigurationImageRegistryCredential.fromMap(
    Map<String, dynamic> map,
  ) {
    return EciScalingConfigurationImageRegistryCredential(
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      server: (() {
        final guardedValue = map['server'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      username: (() {
        final guardedValue = map['username'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
