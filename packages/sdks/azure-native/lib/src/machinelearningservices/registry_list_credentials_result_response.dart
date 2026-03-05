// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'password_response.dart';

class RegistryListCredentialsResultResponse {
  final pulumi.Input<String> location;
  final pulumi.Input<List<PasswordResponse>>? passwords;
  final pulumi.Input<String> username;

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
      'passwords': ?pulumi.Input.mapOptionalInputValue<List<PasswordResponse>, List<Map<String, dynamic>>>(passwords, (value) => pulumi.Input.encodeList<PasswordResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'username': username,
    };
  }

  factory RegistryListCredentialsResultResponse.fromMap(Map<String, dynamic> map) {
    return RegistryListCredentialsResultResponse(
      location: pulumi.Input.fromValue(map['location'] as String),
      passwords: (() { final guardedValue = map['passwords']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PasswordResponse>(guardedValue, (value) => PasswordResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

