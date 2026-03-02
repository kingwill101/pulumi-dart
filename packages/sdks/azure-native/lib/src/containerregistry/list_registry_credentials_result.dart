// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_password_response.dart';

/// Result data returned by listRegistryCredentials.
class ListRegistryCredentialsResult {
  /// The list of passwords for a container registry.
  final List<RegistryPasswordResponse>? passwords;
  /// The username for a container registry.
  final String? username;

  /// Creates a new [ListRegistryCredentialsResult].
  /// [passwords] The list of passwords for a container registry.
  /// [username] The username for a container registry.
  ListRegistryCredentialsResult({
    this.passwords,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'passwords': ?passwords == null ? null : pulumi.Input.encodeList<RegistryPasswordResponse, Map<String, dynamic>>(passwords!, (value) => value.toMap()),
      'username': ?username,
    };
  }

  factory ListRegistryCredentialsResult.fromMap(Map<String, dynamic> map) {
    return ListRegistryCredentialsResult(
      passwords: map['passwords'] == null ? null : pulumi.Input.decodeList<RegistryPasswordResponse>(map['passwords']!, (value) => RegistryPasswordResponse.fromMap((value as Map).cast<String, dynamic>())),
      username: map['username'] == null ? null : map['username']! as String,
    );
  }
}

