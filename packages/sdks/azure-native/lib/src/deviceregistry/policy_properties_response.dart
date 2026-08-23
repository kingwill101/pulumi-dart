// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_configuration_response.dart';

/// Details of the Credential Policy.
class PolicyPropertiesResponse {
  /// The certificate configuration.
  final pulumi.Input<CertificateConfigurationResponse>? certificate;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [PolicyPropertiesResponse].
  /// [certificate] The certificate configuration.
  /// [provisioningState] The status of the last operation.
  const PolicyPropertiesResponse({
    this.certificate,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?pulumi.Input.mapOptionalInputValue<CertificateConfigurationResponse, Map<String, dynamic>>(certificate, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory PolicyPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PolicyPropertiesResponse(
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CertificateConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}
