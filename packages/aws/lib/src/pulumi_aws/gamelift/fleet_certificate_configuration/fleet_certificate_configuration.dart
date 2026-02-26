// ignore_for_file: unused_element, unnecessary_cast

class FleetCertificateConfiguration {
  /// Indicates whether a TLS/SSL certificate is generated for a fleet. Valid values are `DISABLED` and `GENERATED`. Default value is `DISABLED`.
  final String? certificateType;

  FleetCertificateConfiguration({
    this.certificateType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final certificateTypeValue = certificateType;
    if (certificateTypeValue != null) {
      map['certificateType'] = certificateTypeValue;
    }
    return map;
  }

  factory FleetCertificateConfiguration.fromMap(Map<String, dynamic> map) {
    return FleetCertificateConfiguration(
      certificateType: map['certificateType'] == null
          ? null
          : map['certificateType'] as String,
    );
  }
}
