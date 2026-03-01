// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'password_response.dart';

class RegistryListCredentialsResultResponse {
  final String location;
  final List<PasswordResponse>? passwords;
  final String username;

  /// Creates a new [RegistryListCredentialsResultResponse].
  /// [location] Required.
  /// [passwords] Optional.
  /// [username] Required.
  RegistryListCredentialsResultResponse({
    required this.location,
    this.passwords,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'passwords': ?passwords == null ? null : pulumi.Input.encodeList<PasswordResponse, Map<String, dynamic>>(passwords!, (value) => value.toMap()),
      'username': username,
    };
  }

  factory RegistryListCredentialsResultResponse.fromMap(Map<String, dynamic> map) {
    return RegistryListCredentialsResultResponse(
      location: map['location'] as String,
      passwords: map['passwords'] == null ? null : pulumi.Input.decodeList<PasswordResponse>(map['passwords'], (value) => PasswordResponse.fromMap((value as Map).cast<String, dynamic>())),
      username: map['username'] as String,
    );
  }
}

