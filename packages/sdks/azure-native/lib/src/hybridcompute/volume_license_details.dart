// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeLicenseDetails {
  /// The invoice id for the volume license.
  final pulumi.Input<String>? invoiceId;
  /// Describes the program year the volume license is for.
  final pulumi.Input<String>? programYear;

  /// Creates a new [VolumeLicenseDetails].
  /// [invoiceId] The invoice id for the volume license.
  /// [programYear] Describes the program year the volume license is for.
  VolumeLicenseDetails({
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
      invoiceId: map['invoiceId'] == null ? null : (map['invoiceId'] as String).input(),
      programYear: map['programYear'] == null ? null : (map['programYear'] as String).input(),
    );
  }
}

