// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Anonymous authentication
class RegistryEndpointAnonymousAuthenticationResponse {
  /// Anonymous authentication properties
  final pulumi.Input<dynamic> anonymousSettings;
  /// The authentication method.
  /// Expected value is 'Anonymous'.
  final pulumi.Input<String> method;

  /// Creates a new [RegistryEndpointAnonymousAuthenticationResponse].
  /// [anonymousSettings] Anonymous authentication properties
  /// [method] The authentication method.
  const RegistryEndpointAnonymousAuthenticationResponse({
    required this.anonymousSettings,
    required this.method,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anonymousSettings': anonymousSettings,
      'method': method,
    };
  }

  factory RegistryEndpointAnonymousAuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return RegistryEndpointAnonymousAuthenticationResponse(
      anonymousSettings: pulumi.Input.fromValue(map['anonymousSettings']),
      method: pulumi.Input.fromValue(map['method'] as String),
    );
  }
}
