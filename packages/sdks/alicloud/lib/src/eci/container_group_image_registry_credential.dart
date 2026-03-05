// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerGroupImageRegistryCredential {
  /// The password used to log on to the image repository. It is required when `image_registry_credential` is configured.
  final pulumi.Input<String> password;
  /// The address of the image repository. It is required when `image_registry_credential` is configured.
  final pulumi.Input<String> server;
  /// The username used to log on to the image repository. It is required when `image_registry_credential` is configured.
  final pulumi.Input<String> userName;

  /// Creates a new [ContainerGroupImageRegistryCredential].
  /// [password] The password used to log on to the image repository. It is required when `image_registry_credential` is configured.
  /// [server] The address of the image repository. It is required when `image_registry_credential` is configured.
  /// [userName] The username used to log on to the image repository. It is required when `image_registry_credential` is configured.
  ContainerGroupImageRegistryCredential({
    required this.password,
    required this.server,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'server': server,
      'userName': userName,
    };
  }

  factory ContainerGroupImageRegistryCredential.fromMap(Map<String, dynamic> map) {
    return ContainerGroupImageRegistryCredential(
      password: pulumi.Input.fromValue(map['password'] as String),
      server: pulumi.Input.fromValue(map['server'] as String),
      userName: pulumi.Input.fromValue(map['userName'] as String),
    );
  }
}

