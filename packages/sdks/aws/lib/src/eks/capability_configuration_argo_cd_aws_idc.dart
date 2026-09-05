// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CapabilityConfigurationArgoCdAwsIdc {
  /// ARN of the IAM Identity Center instance.
  final pulumi.Input<String> idcInstanceArn;
  final pulumi.Input<String?>? idcManagedApplicationArn;
  /// Region of the IAM Identity Center instance.
  final pulumi.Input<String?>? idcRegion;

  /// Creates a new [CapabilityConfigurationArgoCdAwsIdc].
  /// [idcInstanceArn] ARN of the IAM Identity Center instance.
  /// [idcManagedApplicationArn] Optional.
  /// [idcRegion] Region of the IAM Identity Center instance.
  const CapabilityConfigurationArgoCdAwsIdc({
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

  factory CapabilityConfigurationArgoCdAwsIdc.fromMap(Map<String, dynamic> map) {
    return CapabilityConfigurationArgoCdAwsIdc(
      idcInstanceArn: pulumi.Input.fromValue(map['idcInstanceArn'] as String),
      idcManagedApplicationArn: (() { final guardedValue = map['idcManagedApplicationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      idcRegion: (() { final guardedValue = map['idcRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
