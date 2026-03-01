// ignore_for_file: unused_element, unnecessary_cast

class CapabilityConfigurationArgoCdAwsIdc {
  /// ARN of the IAM Identity Center instance.
  final String idcInstanceArn;
  final String? idcManagedApplicationArn;

  /// Region of the IAM Identity Center instance.
  final String? idcRegion;

  /// Creates a new [CapabilityConfigurationArgoCdAwsIdc].
  /// [idcInstanceArn] ARN of the IAM Identity Center instance.
  /// [idcManagedApplicationArn] Optional.
  /// [idcRegion] Region of the IAM Identity Center instance.
  CapabilityConfigurationArgoCdAwsIdc({
    required this.idcInstanceArn,
    this.idcManagedApplicationArn,
    this.idcRegion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idcInstanceArn': idcInstanceArn,
      'idcManagedApplicationArn': ?idcManagedApplicationArn,
      'idcRegion': ?idcRegion,
    };
  }

  factory CapabilityConfigurationArgoCdAwsIdc.fromMap(
    Map<String, dynamic> map,
  ) {
    return CapabilityConfigurationArgoCdAwsIdc(
      idcInstanceArn: map['idcInstanceArn'] as String,
      idcManagedApplicationArn: map['idcManagedApplicationArn'] == null
          ? null
          : map['idcManagedApplicationArn'] as String,
      idcRegion: map['idcRegion'] == null ? null : map['idcRegion'] as String,
    );
  }
}
