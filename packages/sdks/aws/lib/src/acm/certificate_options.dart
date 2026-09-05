// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificateOptions {
  /// Whether certificate details should be added to a certificate transparency log. Valid values are `ENABLED` or `DISABLED`. See https://docs.aws.amazon.com/acm/latest/userguide/acm-concepts.html#concept-transparency for more details.
  final pulumi.Input<String?>? certificateTransparencyLoggingPreference;
  /// Whether the certificate can be exported. Valid values are `ENABLED` or `DISABLED` (default). **Note** Issuing an exportable certificate is subject to additional charges. See [AWS Certificate Manager pricing](https://aws.amazon.com/certificate-manager/pricing/) for more details.
  final pulumi.Input<String?>? export;

  /// Creates a new [CertificateOptions].
  /// [certificateTransparencyLoggingPreference] Whether certificate details should be added to a certificate transparency log. Valid values are `ENABLED` or `DISABLED`. See https://docs.aws.amazon.com/acm/latest/userguide/acm-concepts.html#concept-transparency for more details.
  /// [export] Whether the certificate can be exported. Valid values are `ENABLED` or `DISABLED` (default). **Note** Issuing an exportable certificate is subject to additional charges. See [AWS Certificate Manager pricing](https://aws.amazon.com/certificate-manager/pricing/) for more details.
  const CertificateOptions({
    this.certificateTransparencyLoggingPreference,
    this.export,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateTransparencyLoggingPreference': ?certificateTransparencyLoggingPreference,
      'export': ?export,
    };
  }

  factory CertificateOptions.fromMap(Map<String, dynamic> map) {
    return CertificateOptions(
      certificateTransparencyLoggingPreference: (() { final guardedValue = map['certificateTransparencyLoggingPreference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      export: (() { final guardedValue = map['export']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
