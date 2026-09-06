// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeLicenseDetails {
  /// The invoice id for the volume license.
  final pulumi.Input<String?>? invoiceId;
  /// Describes the program year the volume license is for.
  final pulumi.Input<dynamic>? programYear;

  /// Creates a new [VolumeLicenseDetails].
  /// [invoiceId] The invoice id for the volume license.
  /// [programYear] Describes the program year the volume license is for.
  const VolumeLicenseDetails({
    this.invoiceId,
    this.programYear,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'invoiceId': ?invoiceId,
      'programYear': ?programYear,
    };
  }

  factory VolumeLicenseDetails.fromMap(Map<String, dynamic> map) {
    return VolumeLicenseDetails(
      invoiceId: (() { final guardedValue = map['invoiceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      programYear: (() { final guardedValue = map['programYear']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
