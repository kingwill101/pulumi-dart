// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FleetCertificateConfiguration {
  /// Indicates whether a TLS/SSL certificate is generated for a fleet. Valid values are `DISABLED` and `GENERATED`. Default value is `DISABLED`.
  final pulumi.Input<String>? certificateType;

  /// Creates a new [FleetCertificateConfiguration].
  /// [certificateType] Indicates whether a TLS/SSL certificate is generated for a fleet. Valid values are `DISABLED` and `GENERATED`. Default value is `DISABLED`.
  FleetCertificateConfiguration({this.certificateType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'certificateType': ?certificateType};
  }

  factory FleetCertificateConfiguration.fromMap(Map<String, dynamic> map) {
    return FleetCertificateConfiguration(
      certificateType: (() {
        final guardedValue = map['certificateType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
