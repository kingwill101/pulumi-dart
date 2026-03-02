// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeLicenseDetailsResponse {
  /// The invoice id for the volume license.
  final pulumi.Input<String>? invoiceId;
  /// Describes the program year the volume license is for.
  final pulumi.Input<String>? programYear;

  /// Creates a new [VolumeLicenseDetailsResponse].
  /// [invoiceId] The invoice id for the volume license.
  /// [programYear] Describes the program year the volume license is for.
  VolumeLicenseDetailsResponse({
    this.invoiceId,
    this.programYear,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'invoiceId': ?invoiceId,
      'programYear': ?programYear,
    };
  }

  factory VolumeLicenseDetailsResponse.fromMap(Map<String, dynamic> map) {
    return VolumeLicenseDetailsResponse(
      invoiceId: map['invoiceId'] == null ? null : (map['invoiceId']! as String).input(),
      programYear: map['programYear'] == null ? null : (map['programYear']! as String).input(),
    );
  }
}

