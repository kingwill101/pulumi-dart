// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties for confidential container group
class ConfidentialComputePropertiesResponse {
  /// The base64 encoded confidential compute enforcement policy
  final pulumi.Input<String>? ccePolicy;

  /// Creates a new [ConfidentialComputePropertiesResponse].
  /// [ccePolicy] The base64 encoded confidential compute enforcement policy
  const ConfidentialComputePropertiesResponse({
    this.ccePolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ccePolicy': ?ccePolicy,
    };
  }

  factory ConfidentialComputePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ConfidentialComputePropertiesResponse(
      ccePolicy: (() { final guardedValue = map['ccePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
