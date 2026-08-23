// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_configuration.dart';

/// Details of the Credential Policy.
class PolicyProperties {
  /// The certificate configuration.
  final pulumi.Input<CertificateConfiguration>? certificate;

  /// Creates a new [PolicyProperties].
  /// [certificate] The certificate configuration.
  const PolicyProperties({
    this.certificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?pulumi.Input.mapOptionalInputValue<CertificateConfiguration, Map<String, dynamic>>(certificate, (value) => value.toMap()),
    };
  }

  factory PolicyProperties.fromMap(Map<String, dynamic> map) {
    return PolicyProperties(
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CertificateConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
